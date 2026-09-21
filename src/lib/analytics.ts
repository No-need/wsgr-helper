// Thin wrapper over GA4's gtag so components don't depend on it existing (ad blockers strip it).
declare global {
  interface Window {
    gtag?: (...args: unknown[]) => void;
  }
}

export function track(event: string, params: Record<string, string | number> = {}) {
  window.gtag?.('event', event, params);
}
