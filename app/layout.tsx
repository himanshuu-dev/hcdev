import type { Metadata } from "next";
import { DM_Sans, DM_Mono, Instrument_Serif } from "next/font/google";
import "./globals.css";
const sans = DM_Sans({variable:"--font-sans",subsets:["latin"],display:"swap"});
const mono = DM_Mono({variable:"--font-mono",subsets:["latin"],weight:["400","500"],display:"swap"});
const serif = Instrument_Serif({variable:"--font-serif",subsets:["latin"],weight:"400",style:["normal","italic"],display:"swap"});
export const metadata: Metadata = {
  title: "Himanshu Choudhary | Flutter Developer Portfolio",
  description: "Flutter Developer with 3+ years of experience building Android and iOS apps. Explore Himanshu Choudhary’s projects, skills, experience, and CV.",
};
export default function RootLayout({children}:{children:React.ReactNode}) {
  return <html lang="en" className={`${sans.variable} ${mono.variable} ${serif.variable}`}><body>{children}</body></html>;
}
