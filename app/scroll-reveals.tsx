"use client";

import { useEffect } from "react";

/** Enhance visible sections without hiding content before hydration. */
export default function ScrollReveals() {
  useEffect(() => {
    const motion = window.matchMedia("(prefers-reduced-motion: reduce)");
    if (motion.matches || !("IntersectionObserver" in window)) return;

    const observer = new IntersectionObserver(entries => {
      entries.forEach(entry => {
        if (!entry.isIntersecting) return;
        const element = entry.target as HTMLElement;
        // Text stays readable; only a small positional settle is animated.
        element.animate(
          [{ transform: "translateY(12px)" }, { transform: "translateY(0)" }],
          { duration: 500, easing: "cubic-bezier(.2,.7,.2,1)" },
        );
        observer.unobserve(element);
      });
    }, { threshold: 0.12 });

    document.querySelectorAll("[data-reveal]").forEach(element => observer.observe(element));
    const stop = () => {
      if (motion.matches) {
        observer.disconnect();
        document.getAnimations().forEach(animation => animation.cancel());
      }
    };
    motion.addEventListener("change", stop);
    return () => {
      observer.disconnect();
      motion.removeEventListener("change", stop);
    };
  }, []);

  return null;
}
