export interface Ship {
  name: string; // wiki (Simplified) name, used as the key everywhere
  tw: string;
  index: number;
  rarity: number;
  type: string;
  typeName: string; // Simplified ship-class word as used in routing conditions (轻巡, 航母…)
  country: string;
  speed: number;
  luck: number;
  rec: number;
  recMax: number;
  hp: number;
  fuel: number;
  ammo: number;
  rFuel: number;
  rSteel: number;
  mod?: string;
}

export interface FleetSlot {
  ship: string;
  level: number;
}

export interface Fleet {
  name: string;
  slots: FleetSlot[];
  /** extra 索敌 from equipment, added to the level-based estimate */
  recBonus: number;
}

export interface RouteDef {
  label?: string;
  to: string;
  cond?: string;
  stars?: number;
  requires?: string;
  closedBy?: string;
}

export interface FlagDef {
  id: string;
  text: string;
  close?: [string, string][];
  open?: [string, string][];
  /** switches on by itself during a sortie once `node` has been visited `visits` times (7-4) */
  auto?: { node: string; visits: number };
}

export interface RouteMap {
  id: string;
  nodes: Record<string, { x: number; y: number }>;
  routes: Record<string, RouteDef[]>;
  flags?: FlagDef[];
  notes?: string[];
  uncertain?: string[];
}

export interface MapMetaNode {
  kind: 'battle' | 'boss' | 'other';
  tags?: string;
  text?: string;
}

export interface MapMeta {
  id: string;
  name: string;
  chapter: string;
  suppress?: string;
  shipExp?: string;
  intro: string[];
  nodes: Record<string, MapMetaNode>;
}

export interface EnemyShip {
  title: string;
  tw: string;
  type: string;
  lv: number;
  rarity: number;
  speed: number;
  rec: number;
  air: number;
  hp?: number;
}

export interface EnemyFleet {
  formation: string;
  ships: string[];
}
