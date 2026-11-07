# Himanshu Choudhary — Portfolio

A cartoon-inspired Next.js portfolio featuring real Flutter work across mobility, commerce, and health.

## Local development

Run from the repository root:

```powershell
npm install
npm run dev
```

Open http://localhost:3000.

## Production

```powershell
npm run build
python -m http.server 8080 --directory out
```

Builds generate a static site in `out/`. Pushes to `main` run `.github/workflows/deploy-pages.yml`, which lints, builds, and deploys the export to GitHub Pages at https://hcdev.in. The Pages publishing source is GitHub Actions. `public/CNAME` preserves the custom domain; `public/.nojekyll` preserves Next.js assets. Images use the existing WebP files without a server-side optimization endpoint.

## Project map

- app/page.tsx: profile, two featured projects, expandable app index, skills, experience, and contact.
- app/portfolio-data.json: the original project details, store links, skills, and timeline.
- app/globals.css: semantic theme tokens, typography, layout, responsive rules, and reduced-motion handling.
- app/theme-toggle.tsx: light/dark control.
- app/contact-actions.tsx: clipboard action and accessible feedback.
- app/icons.tsx: existing icon definitions.
- app/layout.tsx: self-hosted fonts and page metadata.
- public/images/: optimized local WebP assets.
- public/himanshu.pdf: CV.
- DESIGN.md: the portfolio design system and extension guidance.

The original Flutter project at D:/Projects/Personal/portfolio is unchanged.
