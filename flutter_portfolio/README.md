# Himanshu Choudhary — Portfolio

An editorial Next.js portfolio featuring real Flutter work across mobility, commerce, and health.

## Local development

Run from D:/Projects/Personal/new_portfolio/flutter_portfolio:

```powershell
npm install
npm run dev
```

Open http://localhost:3000.

## Production

```powershell
npm run build
npm start
```

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
