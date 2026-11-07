# Portfolio design system

The portfolio uses a cartoon sketchbook direction: warm cream paper, dark green ink, coral emphasis, mustard highlights, strong outlines, and small offset shadows. A framed profile photograph anchors the introduction; real app artwork remains the focus of the project sections.

DM Sans provides expressive bold headings and readable body text. DM Mono is reserved for chapter labels, project metadata, and technical details. Keep the existing font variables and semantic color tokens in app/globals.css. Dark mode retains the same hierarchy and warm accents.

Use comic chapter labels, rectangular controls with visible focus, lightly rotated illustration details, and purposeful motion. Avoid decorative cards within cards, invented achievements, and unnecessary sections. Portfolio facts, project links, and experience come from app/portfolio-data.json.

The layout stacks naturally below 700px. Respect reduced motion. Keep project disclosures keyboard operable and preserve contact feedback and the CV download.

Validation for this redesign: ESLint and production build passed. Chrome was used to inspect desktop and mobile renders. No horizontal overflow was found at 320, 390, 768, 1024, or 1440 pixels. Theme switching and project expansion worked, all eight project images loaded, and no browser runtime errors were reported.

Project features link to a shared Fomo engineering case study. Keep its claims grounded in confirmed contributions: car animation, background tracking, offline caching/data loss, and crash reduction. Download milestones describe the apps, not individual performance. Theme choices persist via localStorage, with storage failure handled gracefully.
