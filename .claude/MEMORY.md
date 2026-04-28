# SNME Website — Project Memory

> This file is Claude's persistent memory for the SNME website project.
> Update this file after every significant change or decision.

---

## Active File
**Always work from:** `public/index.html`  
**Current version:** v8  
**Last updated:** April 2026

---

## Design Decisions Log

### Heading Style — FINAL ✅
- **Decision:** 50/50 split — first half of heading in blue `#2A5E97`, second half in grey `#8C9399`
- **Applied to:** All 11 section headings site-wide
- **Versions tested:** v1 (mixed), v2 (first word only blue), v3 (last word only grey), v4 (50/50) ← chosen

### Section Headings — All 11
| Heading | Blue Part | Grey Part |
|---------|-----------|-----------|
| Our | Services |
| Our | Fleet |
| Find the | Right Crane |
| Market | Segments |
| Our GCC | Operations |
| Beyond Lifting. | A Full Industrial Platform. |
| Landmark | Projects |
| News & | Insights |
| Sustainable | Growth. |
| Build Your | Career With SNME |
| Submit a | Project RFQ |

### Motto Colour Rules ✅
- On dark backgrounds → White `#ffffff`
- On light backgrounds → Dark grey `#3a3f42`
- CSS classes: `.motto-on-dark` / `.motto-on-light`

### Hero Video Height ✅
- Reduced to `calc(72vh - 5cm)` with `min-height: 520px`
- Internal spacing tightened: h1 52px, sub-text height 120px, stats padding reduced
- Goal: video + counters + next section peek all visible without scrolling

### Footer Layout ✅
- 4-column grid: Logo+tagline | Company | Markets | Policies
- Company column: `padding-left: 32px`
- Bottom bar copyright + policy links: mid grey `#8C9399`
- Copyright text: "© 2025 Sarens Nass Middle East. All rights reserved."

### Beyond Lifting Section ✅
- Added `sec-label` above heading: "Joint Ventures & Strategic Alliances"
- "Our Partners" label below description was added then removed per client request

### Equipment Selector Button ✅
- Renamed: "Request Formal Lift Study" → "Request A Lift Study"
- Button style changed to `btn-on-dark` (matches "Enquire for this Market")
- Frame added: `border: 1px solid rgba(168,196,224,.3)` matching GCC panel

### Our Clients Ribbon ✅
- Added: QatarEnergy, ADNOC, Qatar Petroleum (real uploaded logos)
- Removed: FIFA World Cup Qatar 2022, Liebherr, RasGas, NSH, Anipsotiki (poor quality)
- All logos: fixed `height:48px; width:130px; object-fit:contain`
- Logos now stored as local assets in `assets/logos/`

---

## File Structure

```
snme-website/
├── public/                    ← deployed to Vercel (GitHub synced)
│   ├── index.html             ← THE website
│   └── assets/
│       ├── logos/
│       │   ├── qatar-energy.png
│       │   ├── adnoc.svg
│       │   └── qatar-petroleum.png
│       └── images/            ← for future local images
│
└── .claude/                   ← NOT synced to GitHub
    ├── PRD.md                 ← product requirements
    ├── MEMORY.md              ← this file
    ├── CHANGELOG.md           ← version history
    └── skills/
        └── SNME-SKILL.md      ← Claude's SNME context
```

---

## Supabase Setup

- [x] Schema created: `supabase/schema.sql`
- [x] Table: `rfq_submissions` with RLS policies
- [x] RFQ form wired up in `index.html` (all fields have IDs, submitRFQ() function)
- [x] Supabase JS client injected via CDN
- [x] Keys injected at Vercel build time via `inject-env.js` (never hardcoded)
- [ ] Run `schema.sql` in Supabase SQL Editor
- [ ] Add SUPABASE_URL + SUPABASE_ANON_KEY to Vercel env variables
- [ ] Test live form submission

---

## GitHub / Vercel Setup

- [x] GitHub repo exists: https://github.com/TamerFakhroo/SNME-WEBSITE
- [x] `vercel.json` created — output dir: `public/`
- [x] `package.json` + `inject-env.js` build script created
- [x] `.gitignore` excludes `.claude/`
- [ ] Push all files to GitHub
- [ ] Connect Vercel to GitHub repo
- [ ] Set build command: `node inject-env.js`
- [ ] Add env variables in Vercel dashboard
- [ ] Deploy and test

---

## Important Notes

- **Storyblok** — all existing images are hosted there. Do not migrate unless specifically requested. Just keep the URLs.
- **Hero video** — YouTube embed (unlisted). No action needed.
- **Arabic RTL** — structure is already in the HTML (dir="rtl" toggle exists). Not yet activated.
- **Base64 logos** — the 3 uploaded logos have been extracted and saved as real files. index.html now references them via local paths.
- **Superpowers skills** — all 14 skills from github.com/obra/superpowers are installed in `.claude/superpowers/`. Use them for ALL work on this project. Brainstorm before coding. Debug systematically. Verify before claiming done.
