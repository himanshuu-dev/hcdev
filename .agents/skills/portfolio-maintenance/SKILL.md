---
name: portfolio-maintenance
description: Design, update, and maintain the hcdev.in portfolio, its CV, SEO, and static GitHub Pages deployment. Use for changes in this project; preserve its established visual identity and verified career facts.
---

# Maintain hcdev.in

Work from the repository root. Read `AGENTS.md` first, including the requirement to consult the installed Next.js guides before changing framework code. Follow the current user request over defaults recorded here. This skill provides project context, not permission to publish unrelated work.

## Find the source of truth

| Area | Source |
| --- | --- |
| Page composition, case study, project labels | `app/page.tsx` |
| Projects, skills, experience | `app/portfolio-data.json` |
| Design tokens and responsive styles | `app/globals.css`, `DESIGN.md` |
| Hero photograph | `app/developer-scene.tsx`, `public/images/profile.webp` |
| Social links | `app/icons.tsx` |
| Theme and persistence | `app/theme-toggle.tsx`, bootstrap script in `app/layout.tsx` |
| Contact feedback | `app/contact-actions.tsx` |
| Editable CV and downloadable PDF | `documents/resume.html`, `public/himanshu.pdf` |
| SEO metadata and structured data | `app/site-config.ts`, `app/layout.tsx`, `app/structured-data.tsx` |
| Crawl discovery | `app/robots.ts`, `app/sitemap.ts`, `SEO.md` |
| Social preview | `documents/social-preview.html`, `public/images/social-preview.png` |
| Hosting | `next.config.ts`, `.github/workflows/deploy-pages.yml`, `public/CNAME` |

Paths above are relative to the repository root. The skill is under `.agents/skills/portfolio-maintenance/`.

## Design and interface changes

Explain the visual direction briefly before coding. Extend the existing cartoon sketchbook design: cream paper, dark green ink, coral emphasis, mustard accents, strong outlines, restrained offset shadows, and comic chapter labels. Use existing fonts, semantic color tokens, and components. See `DESIGN.md` for the maintained design system; do not copy its historical test claims into new reports.

Preserve these established product choices unless the user changes them:

- Brand spelling is **hcdev.in**, not hc.dev. Use the real profile photograph in its comic frame.
- The hero has one action: **Download my CV**, targeting `/himanshu.pdf` with a descriptive download filename.
- Contact navigation and the contact section have no decorative arrow symbols.
- Store links are unboxed text links with a Material open-in-new SVG, visible while project details are closed. Keep links outside disclosure summaries.
- Highlight download milestones and identify them as app downloads. InteriorChowk precedes RucJa. If project order changes, update the parallel sector labels in `app/page.tsx` too.
- The selected-work introductory note appears only on mobile (the existing breakpoint is 700px).
- Keep both themes readable. Persist the choice under `hcdev-theme`; switching must still work when browser storage is unavailable. Avoid hydration mismatches and preserve the early theme bootstrap.

Keep keyboard focus visible, controls named, headings semantic, and motion respectful of reduced-motion preferences. Avoid nested interactive controls, keyword stuffing, filler sections, invented statistics, and adding dependencies for small visual changes.

## Content and career facts

Use existing data and explicit user statements. Ask for missing evidence when it changes the claim; continue independent work while awaiting it.

- Himanshu Choudhary is a Flutter developer based in Panchkula, India. Recheck dated experience claims when relevant rather than incrementing years automatically.
- Zopflix employment ended in October 2026. Keep website and CV dates consistent; do not restore the old scheduled November end date or describe the role as current.
- Confirmed Fomo work includes car animation on maps, background tracking, crash reduction, offline caching, and addressing data loss. No numerical performance results were supplied.
- Fomo Corp uses Riverpod; Fomo Cabs uses Provider. The engineering story covers both; do not assign every challenge to a specific app without evidence.
- RucJa is a health-monitoring application connecting IoT devices through Bluetooth.
- AI tools are Codex and Claude, used for planning, coding, debugging, UI exploration, and reviews. Emphasize project context, developer judgment, code review, and verification rather than unsupported productivity claims.
- Download milestones describe app adoption, not individual developer impact. Do not imply sole authorship, sole release ownership, or measured improvements without supporting facts.

## CV updates

Edit `documents/resume.html`, then regenerate `public/himanshu.pdf`; updating only the HTML does not update the downloaded CV. Keep a professional, text-selectable, readable one-page A4 document with clickable contact and store links. The CV need not adopt the website's cartoon styling.

Use an available Chromium-based browser and its print-to-PDF capability (for example Playwright `page.pdf`). Honor the source's print CSS with `preferCSSPageSize: true`, enable print backgrounds, and omit browser headers/footers. Use existing browser tooling when available; do not rely on machine-specific temporary scripts from earlier sessions or install a runtime dependency solely for PDF generation.

Inspect the rendered PDF after regeneration. Verify page count, changed text, the October 2026 end date, and the clickable `https://hcdev.in` link. Render and inspect the final artifact, not just the HTML source. Regenerate the PDF **before** the final static build so `out/himanshu.pdf` contains the latest version. Keep employment bullets and project claims aligned with the website.

## SEO changes

Read `SEO.md` for the current setup and account follow-up. Keep the production origin `https://hcdev.in` centralized in `app/site-config.ts`. Preserve canonical, Open Graph, Twitter, and linked Person/ProfilePage/WebSite metadata with consistent URLs and social identities. Escape `<` when serializing JSON-LD into HTML.

Keep JSON-LD grounded in visible content; do not add ratings, fake organizations, unverified achievements, or invented freshness dates. The sitemap currently has one real canonical page; section anchors are not additional URLs. Add entries only when actual indexable pages exist.

The social image is 1200 x 630 PNG, generated from `documents/social-preview.html`. Inspect and regenerate it when its visible branding or portrait changes. Verify that the exported image URL resolves. Submit verification tokens only when supplied by the user or an authorized account flow. Distinguish valid markup from confirmed indexing, rich-result eligibility, and rankings; never promise a ranking or claim Search Console submission without evidence.

## Static hosting and publication

This project exports with `output: "export"`, `trailingSlash: true`, and unoptimized images to `out/`. GitHub Pages has no Next.js server or default image-optimization endpoint. Avoid server-dependent features unless the user explicitly chooses a hosting change.

The `main` branch deploys through `.github/workflows/deploy-pages.yml` using GitHub Actions. Preserve `public/CNAME` (`hcdev.in`), `public/.nojekyll`, and the Pages publishing source. Do not commit `out/` or replace the old `gh-pages` history to publish this workflow.

A skill invocation alone does not authorize a push. Follow the current task's publication scope and any existing session authorization. When publishing is authorized, inspect the diff, commit the intended files, push without force, check the workflow, and verify the live change when practical. If authentication or deployment fails, report the specific unresolved step; do not label a queued or failed run as deployed or repeatedly retry unchanged credentials.

## Verify the affected behavior

Scale verification to the change. Documentation-only edits need document and link validation, not an app build.

For code changes, run `npm run lint` and `npm run build`. Serve `out/` with a plain static server for production checks; `next start` is not the preview command for this static export. An available Python installation can run `python -m http.server 8080 --directory out`.

For interface changes, inspect desktop and mobile renders and check overflow near 320, 390, 768, and 1440px as relevant. Exercise changed controls, project disclosures, store links, and the CV download. For theme changes, test reload persistence, both themes, and storage denial. For SEO changes, inspect the exported HTML, canonical and social tags, parse JSON-LD, fetch crawler files and the social image, and confirm important content exists with JavaScript disabled.

Report what changed, which checks actually ran, and any material limitation. Stop when the requested scope is complete; do not repeat successful tests without a reason.
