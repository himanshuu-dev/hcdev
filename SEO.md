# Search visibility

The production URL is https://hcdev.in/. Metadata lives in app/site-config.ts and app/layout.tsx. The homepage includes Person, ProfilePage, and WebSite JSON-LD tied to the same canonical identity. app/robots.ts and app/sitemap.ts export crawler files compatible with GitHub Pages.

The sitemap includes only the canonical homepage: section anchors are not separate pages. Add real URLs when separate case studies or articles are created. Do not invent freshness dates, reviews, or performance claims.

The share image is public/images/social-preview.png (1200 by 630); its editable HTML source is documents/social-preview.html. Regenerate it with a browser screenshot after changing branding or the portrait.

## Search Console follow-up

1. Add hcdev.in as a domain property in Google Search Console.
2. Verify ownership using the DNS TXT record supplied by Google. This requires access to the domain's DNS provider; no verification token has been invented or added here.
3. Submit https://hcdev.in/sitemap.xml.
4. Inspect https://hcdev.in/ and request indexing if needed.
5. Track indexing, relevant search queries, clicks, and Core Web Vitals before deciding on further changes.

A successful deployment and valid metadata do not prove Google has indexed the site or guarantee a ranking. The site has not been submitted to Search Console in this task. Keep publishing concrete project explanations and link the portfolio from your GitHub and LinkedIn profiles.
