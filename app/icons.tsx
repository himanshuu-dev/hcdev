import type { IconDefinition } from "@fortawesome/fontawesome-common-types";
import { faFlutter, faDartLang, faGitAlt, faGooglePlay, faAppStore, faGithub, faLinkedin, faInstagram } from "@fortawesome/free-brands-svg-icons";
import { faFire, faCode, faMap, faCalendarCheck, faLaptopCode, faTableCellsLarge, faCubes, faCodeBranch, faDatabase, faBolt, faHardDrive, faPaintbrush, faCreditCard } from "@fortawesome/free-solid-svg-icons";

export const socialLinks = [
  { label: "GitHub", url: "https://github.com/himanshuu-dev", icon: faGithub },
  { label: "LinkedIn", url: "https://www.linkedin.com/in/himanshu-choudhary-dev-1999-new/", icon: faLinkedin },
  { label: "Instagram", url: "https://www.instagram.com/himanshuu.1999", icon: faInstagram },
];
const skillIcons: Record<string, IconDefinition> = {
  Flutter: faFlutter, Dart: faDartLang, Firebase: faFire,
  "REST API Integration": faCode, "Google Maps Integration": faMap,
  "Booking Workflows": faCalendarCheck, "Cross-Platform Development": faLaptopCode,
  "Responsive UI": faTableCellsLarge, Provider: faDartLang, Riverpod: faDartLang,
  GetX: faDartLang, MVVM: faCubes, Git: faGitAlt, "CI/CD": faCodeBranch,
  Supabase: faDatabase, SQFlite: faDatabase, "Offline-First Architecture": faBolt,
  "Local Data Caching": faHardDrive, "UI/UX": faPaintbrush,
  "Razorpay Integration": faCreditCard, "Google Play Publishing": faGooglePlay,
  "App Store Publishing": faAppStore,
};
export function Icon({ icon, className }: { icon: IconDefinition; className?: string }) {
  const [width, height, , , paths] = icon.icon;
  return <svg className={className} viewBox={"0 0 " + width + " " + height} fill="currentColor" aria-hidden="true">{(Array.isArray(paths) ? paths : [paths]).map((path,index) => <path key={index} d={path}/>)}</svg>;
}
export function SkillIcon({name}:{name:string}) { return <Icon icon={skillIcons[name] ?? faCode} className="skill-icon"/>; }
export function StoreIcon({name}:{name:string}) { return <Icon icon={name === "Play Store" ? faGooglePlay : faAppStore} className="store-icon"/>; }
