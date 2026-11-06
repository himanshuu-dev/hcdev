import Image from "next/image";
import data from "./portfolio-data.json";
import ThemeToggle from "./theme-toggle";
import { Icon, SkillIcon, StoreIcon, socialLinks } from "./icons";

function SectionTitle({ number, children }: { number: string; children: React.ReactNode }) {
  return <h2 className="section-title"><span>{number}</span>{children}<i /></h2>;
}

export default function Home() {
  return <>
    <main className="portfolio">
      <nav className="navbar" aria-label="Main navigation"><a className="brand" href="#home">&lt; HcDev.in /&gt;</a><ThemeToggle /></nav>
      <section id="home" className="hero" aria-labelledby="intro-title">
        <div className="portrait"><Image src="/images/profile.webp" alt="Himanshu Choudhary" width={300} height={300} preload /></div>
        <div className="intro"><p className="greeting">Hello, I&apos;m</p><h1 id="intro-title">Himanshu Choudhary<span>Flutter Developer</span></h1>
          <p className="bio">I&apos;m a Flutter Developer with 3+ years of experience turning ideas into reliable Android and iOS apps. My work spans mobility, food delivery, e-commerce, and health, including Fomo Cabs and Fomo Corp at Zopflix (Shipra Travels). I build intuitive interfaces backed by maintainable architecture, thoughtful state management, and seamless API, maps, and payment integrations. From development to app store releases, I care about the details that make an app feel simple, responsive, and dependable.</p>
          <div className="socials">{socialLinks.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" aria-label={link.label} key={link.label}><Icon icon={link.icon}/></a>)}</div>
        </div>
      </section>
      <section className="section" aria-labelledby="skills-title"><SectionTitle number="01"><span id="skills-title">My Skills</span></SectionTitle><ul className="skills">{data.skills.map((skill) => <li key={skill}><SkillIcon name={skill}/>{skill}</li>)}</ul></section>
      <section className="section" aria-labelledby="projects-title"><SectionTitle number="02"><span id="projects-title">Featured Client Projects</span></SectionTitle>
        <div className="projects">{data.projects.map(project => <article className="project" key={project.title}><div className="project-cover"><Image src={project.image} alt={project.title + " app preview"} fill sizes="(max-width: 800px) 100vw, 33vw" /></div><div className="project-body">
          <div className="project-heading"><h3>{project.title}</h3><span className={"badge " + (project.badge.includes("downloads") ? "downloads" : "")}>{project.badge.includes("downloads") && "↓ "}{project.badge}</span></div><p>{project.description}</p>
          <ul className="tags">{project.tags.map(tag => <li key={tag}>{tag}</li>)}</ul><div className="store-links">{project.links.map(link => <a href={link.url} target="_blank" rel="noopener noreferrer" key={link.label} aria-label={project.title + " on " + link.label}><StoreIcon name={link.label}/>{link.label}<span aria-hidden="true">↗</span></a>)}</div>
        </div></article>)}</div>
      </section>
      <section className="section" aria-labelledby="experience-title"><SectionTitle number="04"><span id="experience-title">Experience &amp; Education</span></SectionTitle><ol className="timeline">{data.timeline.map((item,index) => <li key={item.subtitle} className={index === 2 ? "education" : ""}><p className="year">{item.year}</p><h3>{item.title}</h3><p className="company">{item.subtitle}</p><p className="experience-description">{item.description}</p>{index === 0 && <div className="company-links"><a href="https://www.zopflix.com/" target="_blank" rel="noopener noreferrer">↗ Zopflix</a><a href="https://www.shipratravels.com/" target="_blank" rel="noopener noreferrer">↗ Shipra Travels</a></div>}</li>)}</ol></section>
      <section className="contact" aria-labelledby="contact-title"><h2 id="contact-title">Let&apos;s Work Together or Hire Me</h2><p>Have a project in mind? Let&apos;s turn your idea into reality.</p><a className="button" href="mailto:bohimanshu@gmail.com">Get In Touch</a></section>
      <footer>Built with 💙 in Next.js</footer>
    </main>
    <a className="download button" href="/himanshu.pdf" download="Himanshu-Choudhary-CV.pdf"><span aria-hidden="true">↓</span>Download CV</a>
  </>;
}

