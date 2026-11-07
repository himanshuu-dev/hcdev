import { socialLinks } from "./icons";
import { site } from "./site-config";

export default function StructuredData() {
  const personId = `${site.url}/#person`;
  const schema = {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "WebSite", "@id": `${site.url}/#website`,
        url: `${site.url}/`, name: site.name,
        alternateName: "Himanshu Choudhary Portfolio", inLanguage: "en",
        publisher: { "@id": personId },
      },
      {
        "@type": "ProfilePage", "@id": `${site.url}/#profile`,
        url: `${site.url}/`, name: site.title, description: site.description,
        isPartOf: { "@id": `${site.url}/#website` },
        mainEntity: { "@id": personId }, inLanguage: "en",
      },
      {
        "@type": "Person", "@id": personId,
        name: "Himanshu Choudhary", url: `${site.url}/`,
        jobTitle: "Flutter Developer", image: `${site.url}/images/profile.webp`,
        description: "Flutter developer with 3+ years of experience building Android and iOS applications across mobility, commerce, food delivery, and health.",
        address: { "@type": "PostalAddress", addressLocality: "Panchkula", addressCountry: "IN" },
        sameAs: socialLinks.map(link => link.url),
        knowsAbout: ["Flutter", "Dart", "Android app development", "iOS app development", "Riverpod", "Provider", "Firebase", "Bluetooth IoT integration", "Offline caching"],
      },
    ],
  };
  return <script type="application/ld+json" dangerouslySetInnerHTML={{ __html: JSON.stringify(schema).replace(/</g, "\\u003c") }} />;
}
