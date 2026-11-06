"use client";

import Image from "next/image";
import { useRef, useState, type KeyboardEvent } from "react";
import { StoreIcon } from "./icons";

type Project = {
  title: string;
  description: string;
  image: string;
  badge: string;
  tags: string[];
  links: { label: string; url: string }[];
};

const sectors = [
  "Intercity food delivery",
  "Connected health",
  "Interiors & commerce",
  "Fresh food delivery",
  "Agriculture",
  "News & publishing",
];

function ProjectPreview({ project }: { project: Project }) {
  const [failed, setFailed] = useState(false);
  const [loaded, setLoaded] = useState(false);

  return <div className={"reader-image " + (loaded ? "is-loaded" : "")} aria-busy={!loaded && !failed}>
    {!loaded && !failed && <span className="preview-status" role="status">Loading app preview…</span>}
    {failed
      ? <div className="preview-fallback"><span className="eyebrow">Preview unavailable</span><p>{project.title}</p><span>You can still explore the app using the store links below.</span></div>
      : <Image src={project.image} alt={project.title + " app screens and product artwork"} fill sizes="(max-width: 700px) 90vw, 62vw" onLoad={() => setLoaded(true)} onError={() => setFailed(true)}/>}
  </div>;
}

/** A project index that opens into a reading spread, rather than a modal. */
export default function ProjectReader({ projects }: { projects: Project[] }) {
  const [selected, setSelected] = useState(0);
  const tabs = useRef<(HTMLButtonElement | null)[]>([]);
  const project = projects[selected];

  if (!project) return <p className="reader-empty">More projects will be added here. You can explore the featured apps above.</p>;

  function select(index: number, focus = false) {
    setSelected(index);
    if (focus) {
      const tab = tabs.current[index];
      tab?.focus({ preventScroll: true });
      // Scroll only the horizontal tab rail; the page keeps its position.
      if (tab && tab.parentElement && window.matchMedia("(max-width: 700px)").matches) {
        tab.parentElement.scrollTo({
          left: tab.offsetLeft - tab.parentElement.offsetLeft - 12,
          behavior: window.matchMedia("(prefers-reduced-motion: reduce)").matches ? "instant" : "smooth",
        });
      }
    }
  }

  function onKeyDown(event: KeyboardEvent<HTMLButtonElement>, index: number) {
    let next = index;
    if (event.key === "ArrowDown" || event.key === "ArrowRight") next = (index + 1) % projects.length;
    else if (event.key === "ArrowUp" || event.key === "ArrowLeft") next = (index - 1 + projects.length) % projects.length;
    else if (event.key === "Home") next = 0;
    else if (event.key === "End") next = projects.length - 1;
    else return;
    event.preventDefault();
    select(next, true);
  }

  return <div className="project-reader">
    <div className="reader-index">
      <p className="eyebrow reader-instruction">Pick a project to open its spread <span aria-hidden="true">↘</span></p>
      <div className="reader-tabs" role="tablist" aria-label="App project index">
        {projects.map((item, index) => <button
          key={item.title}
          ref={element => { tabs.current[index] = element; }}
          id={"project-tab-" + index}
          role="tab"
          aria-selected={selected === index}
          aria-controls={"project-panel-" + index}
          tabIndex={selected === index ? 0 : -1}
          onClick={() => select(index)}
          onKeyDown={event => onKeyDown(event, index)}
        >
          <span className="reader-number">{String(index + 3).padStart(2, "0")}</span>
          <span className="reader-tab-copy"><span>{item.title}</span><span>{sectors[index]}</span></span>
          <span className="reader-tab-arrow" aria-hidden="true">↗</span>
        </button>)}
      </div>
      <p className="reader-keyboard-note">Use arrow keys to browse. Tab to reach the app links.</p>
    </div>
    <div className="reader-stage">
      {projects.map((item, index) => <section
        key={item.title}
        id={"project-panel-" + index}
        role="tabpanel"
        aria-labelledby={"project-tab-" + index}
        tabIndex={0}
        hidden={selected !== index}
        className="reader-panel"
      >
        {selected === index && <>
          <div className="reader-folio"><span>{sectors[index]}</span><span>{String(index + 3).padStart(2, "0")} / 08</span></div>
          <ProjectPreview key={item.title} project={item}/>
          <div className="reader-description">
            <div><h4>{item.title}</h4><p>{item.description}</p></div>
            <p className="reader-platform">Flutter<br/>{item.links.length > 1 ? "Android & iOS" : "Android"}</p>
          </div>
          <p className="reader-stack">{item.tags.join(" / ")}</p>
          <div className="reader-bottom">
            <div className="store-links">{item.links.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label} aria-label={item.title + " on " + link.label}><StoreIcon name={link.label}/>{link.label}<span aria-hidden="true">↗</span></a>)}</div>
            <span className="reader-count">Project {index + 1} of {projects.length}</span>
          </div>
        </>}
      </section>)}
    </div>
    <p className="sr-only" role="status" aria-live="polite">{project.title} selected. {sectors[selected]}.</p>
  </div>;
}
