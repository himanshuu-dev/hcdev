import Image from "next/image";
import StructuredData from "./structured-data";
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
  return <span className="download-badge"><span><strong>{badge.split(" ")[0]}</strong><span className="download-label">app downloads</span></span></span>;
}

function StoreLinks({ project }: { project: typeof data.projects[number] }) {
  return <div className="store-links">{project.links.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label} aria-label={`${project.title} on ${link.label}`}>{link.label}</a>)}</div>;
}
export default function Home() {
  return <>
    <StructuredData/>
    <a className="skip-link" href="#main">Skip to content</a>
    <div className="portfolio" id="home">
      <header className="navbar"><a className="brand" href="#home" aria-label="hcdev.in — Himanshu Choudhary home">hcdev<span>.</span>in</a><span className="nav-caption">Independent Flutter developer<br/>Panchkula, India</span><nav aria-label="Main navigation"><a href="#work">Work</a><a href="#about">About</a><a href="#contact">Contact</a></nav><ThemeToggle/></header>
      <main id="main">
        <section className="hero" aria-labelledby="intro-title">
          <div className="hero-copy"><p className="eyebrow">Himanshu Choudhary / Flutter developer</p><h1 id="intro-title">I build software<br/><em>for real life.</em></h1><p className="hero-description">I’m Himanshu, an independent Flutter app developer based in Panchkula, India. I help businesses build, redesign, and maintain Android and iOS apps, from polished interfaces to complex integrations and production releases.</p><div className="hero-actions"><a className="button" href="/himanshu.pdf" download="Himanshu-Choudhary-CV.pdf">Download CV</a><a className="button-secondary" href="#contact">Get in touch</a></div></div>
          <DeveloperScene/>
          <div className="hero-bottom"><span>3+ years building with Flutter</span><span>Android / iOS</span><a href="#work">A selection of my work</a></div>
        </section>
        <section id="work" className="work-section" aria-labelledby="work-title"><div className="section-heading"><p className="eyebrow">01 / Selected work</p><h2 id="work-title">Selected <em>work.</em></h2><p className="work-intro-note">Real products across mobility, commerce, food and healthcare. Designed for the people who use them.</p></div>
          <div className="featured-projects" aria-label="Featured Flutter projects">{data.projects.slice(0,2).map((project,index) => <article className={`feature feature-${index}`} key={project.title}><div className="feature-art"><div className="art-label"><span>{sectors[index]}</span><span>0{index+1} / 08</span></div><div className="feature-image"><Image src={project.image} alt={`${project.title} app screens`} fill sizes="(max-width: 700px) 90vw, 58vw"/></div><span className="art-foot">Flutter · Android & iOS</span></div><div className="feature-copy"><p className="eyebrow">{index === 0 ? "For the working day" : "For the way there"}</p><h3>{project.title}</h3><p>{index === 0 ? "Business travel, with the moving parts in one place. A B2B app for corporate cab operations and booking workflows." : "From finding a ride to making a booking. A consumer cab app built around a clear, straightforward rider journey."}</p><p className="project-contribution"><strong>My contribution</strong>{project.description}</p><ul className="tags">{project.tags.map(tag => <li key={tag}>{tag}</li>)}</ul><StoreLinks project={project}/></div></article>)}</div>
          <div className="index-heading"><div><p className="eyebrow">The archive / 03–08</p><h3>More things I’ve built.</h3><p>From food delivery to connected health devices.</p></div><span className="eyebrow">Six more shipped projects</span></div>
          <div className="app-index" aria-label="Additional published applications">{data.projects.slice(2).map((project,index) => <article className="app-entry" key={project.title} aria-labelledby={`project-${index}`}>
            <div className="app-overview">
              <h4 className="app-entry-heading" id={`project-${index}`}><span className="project-number">0{index+3}</span><span className="index-name">{project.title}</span></h4>
              <div className="index-image"><Image src={project.image} alt={`${project.title} app preview`} fill sizes="(max-width:700px) 90vw, 42vw"/></div>
              <div className="app-entry-meta"><span className="app-sector">{sectors[index+2]}<span className="app-platform">{project.links.length > 1 ? "Android & iOS" : "Android"}</span></span><DownloadBadge badge={project.badge}/></div>
              <p className="app-description">{project.description}</p>
              <StoreLinks project={project}/>
            </div>
          </article>)}</div>
        </section>
        <section id="about" className="about-section" aria-labelledby="about-title"><div className="section-rail"><p className="eyebrow">02 / About me</p><h2 id="about-title">The person <br/><em>behind the code.</em></h2></div><div className="about-content"><p className="about-lead">I like making complex things feel simple on a small screen.</p><p>Over the past 3+ years, I’ve worked on mobility, food delivery, commerce, and health apps. My work covers the interface and everything it depends on: state management, APIs, maps, payments, and the journey to the app stores.</p><p>I care about code that the next developer can understand, and apps that people can use without thinking about the code at all.</p><div className="toolbox"><p className="eyebrow">Tools of the trade</p><ul>{data.skills.map(skill => <li key={skill}>{skill}</li>)}</ul></div></div></section>
        <section className="development-section" aria-labelledby="development-title"><div className="development-heading"><p className="eyebrow">Engineering practice</p><h2 id="development-title">Beyond <em>the screen.</em></h2><p>The parts of app development I work on, from the first screen to a store release.</p></div><ol className="development-list">{development.map((item,index) => <li key={item.title}><span className="project-number">0{index+1}</span><div><h3>{item.title}</h3><p>{item.description}</p><span className="eyebrow">{item.tools}</span></div></li>)}</ol></section>
        <section className="ai-workflow" aria-labelledby="ai-title">
          <div className="ai-intro"><p className="eyebrow">Behind the build / AI in my workflow</p><h2 id="ai-title">Thoughtful tools.<br/><em>Human decisions.</em></h2><p className="ai-tools">Codex <span aria-hidden="true">×</span> Claude</p><p>I use Codex and Claude throughout my projects, from the first implementation plan to debugging and code review. I bring the context, constraints, and engineering judgment.</p></div>
          <div className="ai-process"><ol>
            <li><span className="project-number">01 / THINK</span><h3>Explore the approach</h3><p>Plan features, compare architecture choices, and explore UI directions before turning an idea into focused implementation steps.</p></li>
            <li><span className="project-number">02 / BUILD</span><h3>Work through the code</h3><p>Give the tools project context, work in focused changes, and refine generated code to fit the app’s architecture and conventions.</p></li>
            <li><span className="project-number">03 / REFINE</span><h3>Get another perspective</h3><p>Investigate bugs, review diffs, and challenge edge cases. Check suggestions against the actual code, then test the behavior.</p></li>
          </ol><p className="ai-principle">My approach: AI assists. I make the decisions, review the code, and verify the result.</p></div>
        </section>
        <section className="experience-section" aria-labelledby="experience-title"><div className="section-rail"><p className="eyebrow">03 / Experience</p><h2 id="experience-title">Where I’ve <br/><em>built and learned.</em></h2></div><ol className="timeline">{data.timeline.map((item,index) => <li key={item.subtitle}><p className="eyebrow">{item.year}</p><h3>{item.subtitle}</h3><p className="role">{item.title}</p><p>{index===0 ? "Built Fomo Corp and Fomo Cabs: two Flutter mobility products covering business travel, rider booking, maps, and cross-platform interfaces." : index===1 ? "Developed and maintained cross-platform apps. Integrated Firebase, built state management with Riverpod, GetX, and Provider, and refactored older codebases." : item.description}</p></li>)}</ol></section>
        <section className="hire-section" id="hire-flutter-developer" aria-labelledby="hire-title"><div className="hire-intro"><p className="eyebrow">Flutter development services</p><h2 id="hire-title">Need a Flutter developer <em>for your app?</em></h2><p>I work with founders and businesses on Android and iOS applications, from new Flutter builds to improving existing products. I’m based in Panchkula, India, and open to remote projects.</p><a href="#contact" className="hire-link">Discuss your project</a></div><div className="hire-services"><h3>How I can help</h3><ul><li><strong>New Flutter apps</strong><span>Cross-platform Android and iOS development, from interfaces to release.</span></li><li><strong>App redesign and feature development</strong><span>Improve mobile UI, refine flows, and add functionality to existing applications.</span></li><li><strong>Bug fixes and maintenance</strong><span>Debug crashes, resolve performance issues, and maintain production codebases.</span></li><li><strong>Integrations</strong><span>Connect maps, payments, APIs, Firebase, Bluetooth devices, and offline storage.</span></li></ul></div></section>
        <section id="contact" className="contact" aria-labelledby="contact-title"><div className="contact-top"><p className="eyebrow">Have something in mind? / Let’s talk</p></div><h2 id="contact-title">Have a project?<br/><em>Let’s talk.</em></h2><div className="contact-bottom"><div><p>Hiring for a Flutter app project, redesign, or an ongoing development role? Contact me directly.</p><a className="email" href="mailto:bohimanshu@gmail.com">bohimanshu@gmail.com</a><a className="contact-phone" href="tel:+917018562251" aria-label="Call Himanshu at +91 70185 62251">+91 70185 62251</a><ContactActions/></div><div className="socials">{socialLinks.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label}>{link.label}</a>)}</div></div></section>
      </main><footer><a className="brand" href="#home" aria-label="hcdev.in home">hcdev<span>.</span>in</a><p>Himanshu Choudhary · Flutter developer</p><a href="#home">Back to top</a></footer>
    </div>
  </>;
}
