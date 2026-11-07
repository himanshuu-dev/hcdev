import type { Metadata } from "next";
import { DM_Sans, DM_Mono, Instrument_Serif } from "next/font/google";
import "./globals.css";
import { site } from "./site-config";
const sans = DM_Sans({variable:"--font-sans",subsets:["latin"],display:"swap"});
const mono = DM_Mono({variable:"--font-mono",subsets:["latin"],weight:["400","500"],display:"swap"});
const serif = Instrument_Serif({variable:"--font-serif",subsets:["latin"],weight:"400",style:["normal","italic"],display:"swap"});
export const metadata: Metadata = {
  metadataBase: new URL(site.url),
  title: site.title,
  description: site.description,
  applicationName: site.name,
  authors: [{ name: "Himanshu Choudhary", url: site.url }],
  creator: "Himanshu Choudhary",
  alternates: { canonical: "/" },
  robots: { index: true, follow: true, googleBot: { index: true, follow: true, "max-image-preview": "large", "max-snippet": -1, "max-video-preview": -1 } },
  openGraph: {
    type: "website", url: "/", siteName: site.name, locale: "en_IN",
    title: site.title, description: site.description,
    images: [{ url: site.image, width: 1200, height: 630, alt: "Himanshu Choudhary — Flutter developer building Android and iOS apps" }],
  },
  twitter: { card: "summary_large_image", title: site.title, description: site.description, images: [{ url: site.image, alt: "Himanshu Choudhary — Flutter developer" }] },
};

export default function RootLayout({children}:{children:React.ReactNode}) {
  return <html lang="en" suppressHydrationWarning className={`${sans.variable} ${mono.variable} ${serif.variable}`}><head><script dangerouslySetInnerHTML={{__html: `(function(){try{var t=localStorage.getItem('hcdev-theme');if(t==='dark'||t==='light')document.documentElement.dataset.theme=t;}catch(e){}})();`}} /></head><body>{children}</body></html>;
}
