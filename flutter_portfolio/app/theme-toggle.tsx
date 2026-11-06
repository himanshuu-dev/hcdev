"use client";
import { useState } from "react";
export default function ThemeToggle() {
  const [light, setLight] = useState(false);
  function toggle() {
    document.documentElement.dataset.theme = light ? "dark" : "light";
    setLight(!light);
  }
  return <button className="theme-toggle" onClick={toggle} aria-label={light ? "Switch to dark mode" : "Switch to light mode"} aria-pressed={light}><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="1.8" aria-hidden="true">{light ? <path d="M20.5 14A8.5 8.5 0 0 1 10 3.5 8.5 8.5 0 1 0 20.5 14Z" /> : <><circle cx="12" cy="12" r="4"/><path d="M12 1v3m0 16v3M1 12h3m16 0h3M4.2 4.2l2.1 2.1m11.4 11.4 2.1 2.1m0-15.6-2.1 2.1M6.3 17.7l-2.1 2.1"/></>}</svg></button>;
}
