import type { Metadata } from "next";
import { Poppins } from "next/font/google";
import "./globals.css";
const poppins = Poppins({variable:"--font-poppins",subsets:["latin"],weight:["400","500","600","700","800"],display:"swap"});
export const metadata: Metadata = {
  title: "Himanshu Choudhary | Flutter Developer Portfolio",
  description: "Flutter Developer with 3+ years of experience building Android and iOS apps. Explore Himanshu Choudhary’s projects, skills, experience, and CV.",
};
export default function RootLayout({children}:{children:React.ReactNode}) {
  return <html lang="en" className={poppins.variable}><body>{children}</body></html>;
}
