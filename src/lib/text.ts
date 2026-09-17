import dict from '../data/generated/text.json';

const table = dict as Record<string, string>;

/** Traditional-Chinese display form of a data string kept in Simplified (conditions, class words, notes). */
export const t = (s: string | undefined): string => (s ? (table[s] ?? s) : '');

export const pct = (p: number) => (p >= 0.9995 ? '100%' : p <= 0 ? '0%' : p < 0.001 ? '<0.1%' : `${(p * 100).toFixed(p < 0.1 ? 1 : 0)}%`);
