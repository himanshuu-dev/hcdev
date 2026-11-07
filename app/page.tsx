import Image from "next/image";
import data from "./portfolio-data.json";
import DeveloperScene from "./developer-scene";
import ThemeToggle from "./theme-toggle";
import ContactActions from "./contact-actions";
import { socialLinks } from "./icons";

const sectors = ["Corporate mobility", "Everyday travel", "Intercity food delivery", "Interiors & commerce", "Health monitoring · IoT devices", "Fresh food delivery", "Agriculture", "News & publishing"];
const development = [
  { title: "A foundation that holds up", description: "Flutter and Dart, with MVVM and state management suited to the app. Riverpod, Provider, and GetX are all part of my toolkit.", tools: "Architecture / State management" },
  { title: "Connected to the everyday", description: "Booking flows, maps, payments, and APIs. I work with Firebase, Supabase, and local caching to connect the interface to the data behind it.", tools: "Integrations / Offline storage" },
  { title: "From build to release", description: "Responsive interfaces across Android and iOS, maintenance of existing codebases, and publishing to Google Play and the App Store.", tools: "Cross-platform / App publishing" },
];

function DownloadBadge({ badge }: { badge: string }) {
  if (!badge.includes("downloads")) return null;
  return <span className="download-badge"><span className="download-symbol" aria-hidden="true">↓</span><span><strong>{badge.split(" ")[0]}</strong><span className="download-label">app downloads</span></span></span>;
}

function StoreLinks({ project }: { project: typeof data.projects[number] }) {
  return <div className="store-links">{project.links.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label} aria-label={`${project.title} on ${link.label}`}>{link.label}<svg className="store-link-icon" viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M19 19H5V5h7V3H5c-1.1 0-2 .9-2 2v14c0 1.1.9 2 2 2h14c1.1 0 2-.9 2-2v-7h-2v7ZM14 3v2h3.59l-9.83 9.83 1.41 1.41L19 6.41V10h2V3h-7Z"/></svg></a>)}</div>;
}
export default function Home() {
  return <>
    <a className="skip-link" href="#main">Skip to content</a>
    <div className="portfolio" id="home">
      <header className="navbar"><a className="brand" href="#home" aria-label="hcdev.in — Himanshu Choudhary home">hcdev<span>.</span>in</a><span className="nav-caption">Developer by day.<br/>Main character, always.</span><nav aria-label="Main navigation"><a href="#work">Work</a><a href="#about">About</a><a href="#contact">Contact</a></nav><ThemeToggle/></header>
      <main id="main">
        <section className="hero" aria-labelledby="intro-title">
          <div className="hero-copy"><p className="eyebrow"><span className="tiny-cross" aria-hidden="true">✳</span> Himanshu Choudhary / Flutter developer</p><h1 id="intro-title">Code. Create.<br/><em>A little magic.</em></h1><p className="hero-description">Hey, I’m Himanshu. A Flutter developer turning everyday ideas into thoughtfully built Android & iOS apps. Welcome to my little corner of the internet.</p><div className="hero-actions"><a className="button" href="/himanshu.pdf" download="Himanshu-Choudhary-CV.pdf">Download my CV <span aria-hidden="true">↓</span></a></div></div>
          <DeveloperScene/>
          <div className="hero-bottom"><span>3+ years building with Flutter</span><span>Android / iOS</span><a href="#work">A selection of my work <span aria-hidden="true">↓</span></a></div>
        </section>
        <section id="work" className="work-section" aria-labelledby="work-title"><div className="section-heading"><p className="eyebrow">Chapter 01 / The quest log</p><h2 id="work-title">Little apps.<br/><em>Real adventures.</em></h2><p className="work-intro-note">Different problems. Different people.<br/>The same care for how it all works.</p></div>
          <div className="featured-projects">{data.projects.slice(0,2).map((project,index) => <article className={`feature feature-${index}`} key={project.title}><div className="feature-art"><div className="art-label"><span>{sectors[index]}</span><span>0{index+1} / 08</span></div><div className="feature-image"><Image src={project.image} alt={`${project.title} app screens`} fill sizes="(max-width: 700px) 90vw, 58vw"/></div><span className="art-foot">Flutter · Android & iOS</span></div><div className="feature-copy"><p className="eyebrow">{index === 0 ? "For the working day" : "For the way there"}</p><h3>{project.title}<span aria-hidden="true">↗</span></h3><p>{index === 0 ? "Business travel, with the moving parts in one place. A B2B app for corporate cab operations and booking workflows." : "From finding a ride to making a booking. A consumer cab app built around a clear, straightforward rider journey."}</p><p className="project-contribution"><strong>My contribution</strong>{project.description}</p><ul className="tags">{project.tags.map(tag => <li key={tag}>{tag}</li>)}</ul><StoreLinks project={project}/><a className="case-study-link" href="#fomo-case-study">Read the Fomo engineering story</a></div></article>)}</div>
          <section className="case-study" id="fomo-case-study" aria-labelledby="case-study-title">
            <header className="case-study-header"><p className="eyebrow">Field notes / Fomo Corp &amp; Fomo Cabs</p><h3 id="case-study-title">A ride is more than<br/><em>a moving pin.</em></h3><p>Two mobility products, with different booking journeys and the same need for dependable location and app state.</p></header>
            <dl className="case-study-facts"><div><dt>My role</dt><dd>Flutter developer · Zopflix</dd></div><div><dt>When</dt><dd>Mar – Oct 2026</dd></div><div><dt>Stack</dt><dd>Flutter, Dart, Riverpod / Provider, maps</dd></div><div><dt>Delivery</dt><dd>Android &amp; iOS · Both apps released</dd></div></dl>
            <div className="case-study-body"><div className="case-study-context"><p className="eyebrow">The engineering challenge</p><h4>Keep the journey connected.</h4><p>A booking screen, an animated car, background location updates, and cached data are parts of one experience. My work covered these moving parts alongside crash fixes and service integrations.</p><p className="eyebrow">Architecture in context</p><p>Fomo Corp uses Riverpod; Fomo Cabs uses Provider. Both use Flutter and Dart for their cross-platform interfaces, with maps and booking workflows connected to application services.</p></div><ol className="case-study-notes">
              <li><h4>Map movement</h4><p>Implemented car animation on the map as part of the ride experience.</p></li>
              <li><h4>Beyond the foreground</h4><p>Worked on background tracking so the location experience extended beyond the active app screen.</p></li>
              <li><h4>Protecting app data</h4><p>Handled offline caching and data-loss issues, alongside debugging work to reduce crashes.</p></li>
            </ol></div>
            <div className="case-study-outcome"><div><p className="eyebrow">What shipped</p><p>Two released mobility apps, with work spanning booking, map animation, background tracking, offline data handling, and crash reduction.</p></div><div><p className="eyebrow">Engineering takeaway</p><p>For a mobility app, the work extends beyond the visible screen: location continuity, local data, and stability all shape the ride experience.</p></div></div>
          </section>
          <div className="index-heading"><div><h3>Side quests, shipped.</h3><p>Food, health, commerce, and a few things in between.</p></div><span className="eyebrow">06 projects / Open to explore</span></div>
          <div className="app-index">{data.projects.slice(2).map((project,index) => <article className="app-entry" key={project.title} aria-labelledby={`project-${index}`}>
            <div className="app-overview">
              <h4 className="app-entry-heading" id={`project-${index}`}><span className="project-number">0{index+3}</span><span className="index-name">{project.title}</span></h4>
              <div className="index-image"><Image src={project.image} alt={`${project.title} app preview`} fill sizes="(max-width:700px) 90vw, 42vw"/></div>
              <div className="app-entry-meta"><span className="app-sector">{sectors[index+2]}<span className="app-platform">{project.links.length > 1 ? "Android & iOS" : "Android"}</span></span><DownloadBadge badge={project.badge}/></div>
              <StoreLinks project={project}/>
            </div>
            <details className="project-disclosure">
              <summary><span>Project details</span><span className="expand" aria-hidden="true">+</span></summary>
              <div className="app-detail"><p>{project.description}</p><ul className="tags">{project.tags.map(tag => <li key={tag}>{tag}</li>)}</ul></div>
            </details>
          </article>)}</div>
        </section>
        <section id="about" className="about-section" aria-labelledby="about-title"><div className="section-rail"><p className="eyebrow">Chapter 02 / Character profile</p><h2 id="about-title">Meet the <br/><em>developer.</em></h2></div><div className="about-content"><p className="about-lead">I like making complex things feel simple on a small screen.</p><p>Over the past 3+ years, I’ve worked on mobility, food delivery, commerce, and health apps. My work covers the interface and everything it depends on: state management, APIs, maps, payments, and the journey to the app stores.</p><p>I care about code that the next developer can understand, and apps that people can use without thinking about the code at all.</p><div className="toolbox"><p className="eyebrow">Tools of the trade</p><ul>{data.skills.map(skill => <li key={skill}>{skill}</li>)}</ul></div></div></section>
        <section className="development-section" aria-labelledby="development-title"><div className="development-heading"><p className="eyebrow">My skill tree</p><h2 id="development-title">More than <em>the interface.</em></h2><p>The parts of app development I work on, from the first screen to a store release.</p></div><ol className="development-list">{development.map((item,index) => <li key={item.title}><span className="project-number">0{index+1}</span><div><h3>{item.title}</h3><p>{item.description}</p><span className="eyebrow">{item.tools}</span></div></li>)}</ol></section>
        <section className="ai-workflow" aria-labelledby="ai-title">
          <div className="ai-intro"><p className="eyebrow">Behind the build / AI in my workflow</p><h2 id="ai-title">A little AI.<br/><em>A lot of intention.</em></h2><p className="ai-tools">Codex <span aria-hidden="true">×</span> Claude</p><p>I use Codex and Claude throughout my projects, from the first implementation plan to debugging and code review. I bring the context, constraints, and engineering judgment.</p></div>
          <div className="ai-process"><ol>
            <li><span className="project-number">01 / THINK</span><h3>Explore the approach</h3><p>Plan features, compare architecture choices, and explore UI directions before turning an idea into focused implementation steps.</p></li>
            <li><span className="project-number">02 / BUILD</span><h3>Work through the code</h3><p>Give the tools project context, work in focused changes, and refine generated code to fit the app’s architecture and conventions.</p></li>
            <li><span className="project-number">03 / REFINE</span><h3>Get another perspective</h3><p>Investigate bugs, review diffs, and challenge edge cases. Check suggestions against the actual code, then test the behavior.</p></li>
          </ol><p className="ai-principle">My approach: AI assists. I make the decisions, review the code, and verify the result.</p></div>
        </section>
        <section className="experience-section" aria-labelledby="experience-title"><div className="section-rail"><p className="eyebrow">Chapter 03 / The origin story</p><h2 id="experience-title">Where I’ve <br/><em>been building.</em></h2></div><ol className="timeline">{data.timeline.map((item,index) => <li key={item.subtitle}><p className="eyebrow">{item.year}</p><h3>{item.subtitle}</h3><p className="role">{item.title}</p><p>{index===0 ? "Built Fomo Corp and Fomo Cabs: two Flutter mobility products covering business travel, rider booking, maps, and cross-platform interfaces." : index===1 ? "Developed and maintained cross-platform apps. Integrated Firebase, built state management with Riverpod, GetX, and Provider, and refactored older codebases." : item.description}</p></li>)}</ol></section>
        <section id="contact" className="contact" aria-labelledby="contact-title"><div className="contact-top"><p className="eyebrow">Next chapter / Let’s collaborate</p></div><h2 id="contact-title">Got an idea?<br/><em>Let’s build it.</em></h2><div className="contact-bottom"><div><p>For a project, a role, or a good conversation.</p><a className="email" href="mailto:bohimanshu@gmail.com">bohimanshu@gmail.com</a><ContactActions/></div><div className="socials">{socialLinks.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label}>{link.label}</a>)}</div></div></section>
      </main><footer><a className="brand" href="#home" aria-label="hcdev.in home">hcdev<span>.</span>in</a><p>Himanshu Choudhary · Flutter developer</p><a href="#home">Back to top ↑</a></footer>
    </div>
  </>;
}
