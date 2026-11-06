# Portfolio design system

## Direction

An editorial developer portfolio: warm paper, olive ink, rust accents, and generous margins. Project imagery and real product details carry the page. The visual rhythm comes from rules, a shared left rail, alternating project features, and a compact app index.

## Color

Tokens live in app/globals.css. Components use semantic tokens so the light and dark themes share the same structure.

| Token | Light | Dark | Use |
| --- | --- | --- | --- |
| --paper | #f5f2ea | #202923 | Page background |
| --surface | #ece9df | #27312a | Background section |
| --ink | #283c32 | #eeeadd | Headings and primary controls |
| --body | #4d554d | #c5c9ba | Body text |
| --muted | #63695f | #a6b09e | Secondary text |
| --rule | #d0d1c4 | #465044 | Dividers and outlines |
| --accent | #a74328 | #eca082 | Emphasis and interaction |
| --accent-soft | #ead9bf | #443c2e | Portrait annotation |

Product artwork keeps its own brand colors.

## Typography

- Instrument Serif: identity, section headings, project headlines, and the portrait note. Italic is reserved for short emphasis.
- DM Sans: descriptions, navigation, links, and controls.
- DM Mono: section numbers, product metadata, dates, and technical labels.

Fonts are self-hosted through next/font. Keep descriptive body copy readable; reserve micro typography for supplementary labels. Avoid all-caps paragraphs.

## Layout

- Content width: 1184px maximum.
- Desktop outer margins: 56px minimum; tablet 36px; mobile 20px.
- Spacing rhythm: 4, 8, 12, 16, 24, 32, 40, 64, 80, 96px, with optical adjustments.
- At 700px, the header navigation gains its own row and all editorial columns stack.
- Two product features lead the work section. Six expandable entries follow in a two-column index, becoming one column on mobile.
- Background and experience share a left label rail.

## Components

- Primary action: solid ink rectangle, 48px minimum height.
- Secondary action: text with a thin underline and directional arrow.
- Theme button: outlined circular icon; accessible name describes the next action.
- Featured project: one image field and one text field; alternate the visual side on desktop.
- App index: native details/summary, keyboard operable, with a plus that rotates when expanded.
- Contact: direct mail link, clipboard action with success/error feedback, and named social links.

Use existing components and tokens before adding new styles. Keep content grounded in portfolio-data.json and the original Flutter source. Do not invent outcomes, availability, clients, or performance claims.

## Motion and accessibility

- A brief entry animation introduces the profile on larger screens.
- Project images scale subtly on hover.
- All motion and smooth scrolling respect prefers-reduced-motion.
- Links, buttons, and summaries have visible keyboard focus.
- The page includes a skip link, landmark navigation, semantic headings, and live clipboard feedback.
- Color never carries the only indication of an interactive state.

## Verification

The production build, ESLint, and TypeScript checks pass. The redesigned page was inspected in headless Chrome with desktop and mobile screenshots; horizontal overflow was checked at 320, 390, 768, 1024, and 1440px. Theme switching, project expansion, all six expanded app previews, CV delivery, successful clipboard copying, and denied-clipboard feedback were exercised. Browser checks reported no runtime errors.
