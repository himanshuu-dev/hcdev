"use client";

import { useEffect, useRef, useState } from "react";

export default function ContactActions() {
  const [status, setStatus] = useState<"idle" | "copied" | "error">("idle");
  const reset = useRef<ReturnType<typeof setTimeout> | null>(null);
  useEffect(() => () => { if (reset.current) clearTimeout(reset.current); }, []);

  async function copyEmail() {
    if (reset.current) clearTimeout(reset.current);
    try {
      await navigator.clipboard.writeText("bohimanshu@gmail.com");
      setStatus("copied");
      reset.current = setTimeout(() => setStatus("idle"), 3000);
    } catch {
      setStatus("error");
    }
  }

  return <div className="copy-email"><button onClick={copyEmail}>{status === "copied" ? "Copied to clipboard ✓" : "Copy email address"}</button><span role="status" aria-live="polite">{status === "error" ? "Select the email above to copy it, or open it in your mail app." : status === "copied" ? "Email address copied." : ""}</span></div>;
}
