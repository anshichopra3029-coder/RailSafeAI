# Design Brief

## Direction
Royal RailSafe AI Command Center — a regal futuristic railway safety mission-control for New Delhi Railway Station (10 platforms, CAM-01–CAM-10). Deep royal navy base, royal violet/purple primary, gold/amber accents — Mughal-imperial opulence meets instrumented surveillance. Bold, anti-generic, cinematic.

## Tone
Vigilant royalty — calm authority under pressure. Opulent but restrained; depth through layered glass, royal grids and soft violet/gold light rather than garish neon. Every element feels instrumented, live, and ceremonial.

## Differentiation
"Royal mission-control" — radar sweeps, scanlines, glowing LIVE dots and AI detection boxes in CSS/SVG, all bathed in a purple→gold royal gradient. Feels like watching over New Delhi Station from a regal command throne, not a form.

## Color Palette

| Token        | OKLCH        | Role                                  |
| ------------ | ------------ | ------------------------------------- |
| background   | 0.16 0.03 270 | Deep royal navy canvas (violet tint) |
| card         | 0.21 0.04 275 | Elevated royal surface               |
| primary      | 0.55 0.18 295 | Deep royal purple/violet (actions)   |
| accent       | 0.78 0.14 75  | Gold/amber highlight                  |
| success      | 0.62 0.16 155 | GREEN = safe/nominal                 |
| warning      | 0.78 0.14 75  | AMBER = attention (gold)             |
| risk         | 0.7 0.18 55   | ORANGE = risk                        |
| destructive  | 0.55 0.21 22  | RED = critical                       |
| muted-foreground | 0.66 0.03 280 | Secondary text                  |
| border       | 0.32 0.05 280 | Hairline separators                  |

## Typography
- Display: "Space Grotesk" — hero, KPIs, headers, CAM/PLATFORM labels
- Body: "DM Sans" — UI copy, tables, paragraphs
- Mono: "JetBrains Mono" — timestamps, camera IDs, telemetry, LIVE tags
- Scale: hero `text-5xl/7xl font-bold tracking-tight`, h2 `text-3xl/5xl`, label `text-sm font-semibold tracking-widest uppercase`, body `text-base/lg`

## Elevation & Depth
Layered royal surfaces: background < card < popover, separated by lightness + violet hairline borders. Shadows: subtle (cards), elevated (modals), glow (active nav, LIVE, primary CTA — royal violet), glow-accent (gold for featured).

## Structural Zones

| Zone              | Background      | Border     | Notes                                  |
| ----------------- | --------------- | ---------- | -------------------------------------- |
| Sidebar           | --sidebar 0.14  | border-r   | Active-item violet glow, LIVE footer   |
| Header            | --card          | border-b   | Live clock, LIVE indicator, notifications |
| Hero              | gradient text   | —          | grid-backdrop + radar sweep, glass panel |
| KPI / CCTV / Alert cards | --card + glass-card | glass-border | Hover lift + violet glow border |
| Analytics         | --card          | —          | Recharts on grid-backdrop              |
| Footer / meta     | --muted/40      | border-t   | DEMO/SIMULATION labels                  |

## Spacing & Rhythm
Base 4px; cards 4–6 gap; sections 8–12 gap; page padding 6–8. Grid: 12-col desktop → 2-col tablet → 1-col mobile; sidebar collapses to overlay on mobile.

## Component Patterns
- Buttons: primary = royal purple→gold gradient glow; ghost/outline for secondary
- Cards: rounded `var(--radius)`, glass-card surface, hover lift + violet glow
- CCTV cards: 16:9 screen, scanlines, LIVE badge, CAM-XX/PLATFORM mono label, AI detection box, DEMO/SIMULATION tag
- Alert cards: severity badge (green/amber/orange/red), pulse on critical
- Badges: rounded-full, status color ring, mono label
- Tables: mono IDs, status pills, row hover highlight

## Motion
- Entrance: cards fade+lift in on mount (0.3s cubic-bezier)
- Hover: 0.3s lift + violet/gold border glow; cards float subtly
- Decorative: radar sweep (4s) + scanlines (3s) + LIVE pulse (2s) + alert blink (1.2s) + pulse-glow (2.5s) — one orchestrated story
- Charts animate in on mount; no bouncy/garish effects

## Constraints
- Dark mode only (royal command-center aesthetic)
- CSS/SVG only — no external images; lightweight stack
- AA+ contrast in all tones; semantic status colors (GREEN/AMBER/ORANGE/RED) never used decoratively
- Responsive desktop/laptop/tablet/mobile
- All simulated feeds clearly labeled DEMO/SIMULATION
- 10 platforms only (CAM-01 to CAM-10), New Delhi Railway Station themed

## Signature Detail
The purple→gold royal gradient on hero text, primary CTAs, and the radar sweep beam — a regal gradient that reads as imperial authority over a live railway network, distinguishing this from every blue/cyan command-center cliché.
