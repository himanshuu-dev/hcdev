<!-- BEGIN:nextjs-agent-rules -->

## This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` (resolved from this file's directory; in monorepos the `next` package may not be visible from the repo root) before writing any code. Heed deprecation notices.

This block is written and re-added by `next dev` — verify at `node_modules/next/dist/server/lib/generate-agent-files.js`. Removing it from a diff only re-creates the uncommitted change; committing it with your work keeps the tree clean.

<!-- END:nextjs-agent-rules -->

<!-- Design Rules -->
Build a distinctive, polished Next.js interface. Avoid generic AI-generated design.

- Follow the supplied references and the product’s actual purpose.
- Define consistent typography, spacing, colours, and component styles.
- Use clear hierarchy and realistic content.
- Avoid default purple/blue gradients, excessive glass effects, glow,
  oversized headings, pill-shaped everything, and cards inside cards.
- Avoid predictable hero → feature cards → testimonials layouts unless
  the content genuinely calls for them.
- Use whitespace, alignment, and typography before adding decoration.
- Do not add filler sections, fake statistics, or unnecessary icons.
- If using shadcn/ui, customise it to match the product’s identity.
- Make layouts work naturally on mobile, tablet, and desktop.
- Include accessible controls, visible focus states, and proper contrast.
- Handle loading, empty, error, and disabled states.
- Keep motion subtle and purposeful.
- Reuse the project’s existing design system and dependencies.

Before coding, briefly explain the visual direction.
After implementation, inspect the rendered pages at mobile and desktop
sizes if browser tools are available. Refine generic or inconsistent
details. Only claim checks you actually performed.
<!-- End Design Rules -->
## Project skill

For portfolio design, content, CV, SEO, or deployment work, read
[portfolio-maintenance](.agents/skills/portfolio-maintenance/SKILL.md).
It records project-specific conventions and verification steps. Apply only the
parts relevant to the current request; it does not authorize publishing by itself.
