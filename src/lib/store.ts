import { useEffect, useState } from 'react';
import { shipByName } from './data';
import type { Fleet } from './types';

const KEY = 'wsgr-helper/v1';

export interface AppState {
  fleets: Fleet[];
  current: number;
}

const emptyFleet = (name: string): Fleet => ({ name, slots: [], recBonus: 0 });

function load(): AppState {
  try {
    const raw = localStorage.getItem(KEY);
    if (raw) {
      const s = JSON.parse(raw) as AppState;
      if (Array.isArray(s.fleets) && s.fleets.length) {
        // ships can disappear/rename when the data is rebuilt
        const fleets = s.fleets.map((f) => ({ ...f, slots: (f.slots ?? []).filter((slot) => shipByName.has(slot.ship)).slice(0, 6) }));
        return { fleets, current: Math.min(s.current ?? 0, fleets.length - 1) };
      }
    }
  } catch {
    // corrupted or unavailable storage: start fresh
  }
  return { fleets: [emptyFleet('第一艦隊')], current: 0 };
}

export function useAppState() {
  const [state, setState] = useState<AppState>(load);
  useEffect(() => {
    try {
      localStorage.setItem(KEY, JSON.stringify(state));
    } catch {
      // storage unavailable: state just won't persist
    }
  }, [state]);

  const fleet = state.fleets[state.current];
  const setFleet = (next: Fleet) => setState((s) => ({ ...s, fleets: s.fleets.map((f, i) => (i === s.current ? next : f)) }));
  const selectFleet = (i: number) => setState((s) => ({ ...s, current: i }));
  const addFleet = () => setState((s) => ({ fleets: [...s.fleets, emptyFleet(`艦隊 ${s.fleets.length + 1}`)], current: s.fleets.length }));
  const copyFleet = () =>
    setState((s) => ({ fleets: [...s.fleets, { ...s.fleets[s.current], name: `${s.fleets[s.current].name} 副本` }], current: s.fleets.length }));
  const removeFleet = () =>
    setState((s) => {
      if (s.fleets.length <= 1) return { fleets: [emptyFleet('第一艦隊')], current: 0 };
      const fleets = s.fleets.filter((_, i) => i !== s.current);
      return { fleets, current: Math.min(s.current, fleets.length - 1) };
    });

  return { state, fleet, setFleet, selectFleet, addFleet, copyFleet, removeFleet };
}
