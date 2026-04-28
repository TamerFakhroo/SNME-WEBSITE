# SNME Website Project — Claude Skill

> This is Claude's master context file for the SNME website project.
> Read this before doing any work on the website.

---

## Who You Are Working For

**Company:** Sarens Nass Middle East (SNME)
- Joint venture: Sarens (Belgium — global heavy lift leader) + Nass Group (Bahrain — GCC industrial conglomerate)
- Services: Heavy lift, crane rental, engineered transport, rigging, SPMT, project logistics
- Markets: Bahrain, KSA, UAE, Qatar, Kuwait, Oman
- Positioning: Premium, safety-first, technically superior GCC partner

**You are working with:** The Regional Marketing Manager, SNME

---

## Project Rules — ALWAYS FOLLOW

1. **Always work from `public/index.html`** — this is the ONE active file
2. **Never create a new version file** (no v9.html, v10.html) — edit in place
3. **Before any edit** — read MEMORY.md to understand current state
4. **After any significant change** — update MEMORY.md and CHANGELOG.md
5. **Never touch `.claude/` files** unless explicitly asked
6. **Assets go in `public/assets/`** — logos in `/logos/`, images in `/images/`
7. **Output always goes to `/mnt/user-data/outputs/`** for download

---

## Design System — Non-Negotiable

| Element | Value |
|---------|-------|
| Primary Blue | `#2A5E97` |
| Mid Grey | `#8C9399` |
| Dark Grey | `#3a3f42` |
| Navy | `#1e3a5f` |
| Yellow Accent | `#FFE300` |
| Section headings | 50/50 — first half blue, second half grey |
| Motto on dark bg | White `#ffffff` |
| Motto on light bg | Dark grey `#3a3f42` |
| Logo ribbon | Fixed 130×48px, greyscale + opacity 55%, full colour on hover |

---

## Stack

| Layer | Tool |
|-------|------|
| Frontend | HTML / CSS / Vanilla JS (single file) |
| Hosting | Vercel (auto-deploy from GitHub) |
| Source Control | GitHub |
| Backend | Supabase (RFQ form — pending setup) |
| Media | Storyblok CDN (existing) + local assets |
| Video | YouTube embed |

---

## Folder Structure

```
snme-website/
├── public/                ← GitHub synced → Vercel deployed
│   ├── index.html
│   └── assets/
│       ├── logos/
│       │   ├── qatar-energy.png
│       │   ├── adnoc.svg
│       │   └── qatar-petroleum.png
│       └── images/
│
└── .claude/               ← NOT on GitHub (gitignored)
    ├── PRD.md
    ├── MEMORY.md
    ├── CHANGELOG.md
    └── skills/
        └── SNME-SKILL.md  ← this file
```

---

## Brand Voice

| | |
|--|--|
| **Tone** | Confident, professional, technically credible |
| **Voice** | Expert partner — we solve complex problems, not just rent cranes |
| **Language** | B2B industrial — precise, clear, outcome-focused |
| **Avoid** | Generic marketing speak, casual tone, vague claims |

---

## GCC Market Intelligence

- **KSA:** NEOM, Aramco expansions, Vision 2030 giga-projects
- **UAE:** ADNOC LNG/refinery, Abu Dhabi industrial expansion
- **Kuwait:** KNPC Clean Fuels Project
- **Qatar:** QatarEnergy LNG expansion (North Field)
- **Bahrain:** Alba expansions, Bapco Modernisation Programme
- **Oman:** Duqm refinery, PDO field developments

---

## Pending Actions

- [ ] Connect RFQ form → Supabase
- [ ] Set up GitHub repo + Vercel deployment
- [ ] Email notification on form submission
- [ ] Arabic RTL activation
- [ ] Migrate images to Cloudinary (future)

---

## Superpowers Skills (Active for ALL work on this project)

All 14 superpowers skills from https://github.com/obra/superpowers are installed in `.claude/superpowers/`. They apply to ALL work on this project.

### Mandatory Workflow
| When | Use Skill |
|------|-----------|
| Before any new feature or change | `brainstorming` — design first, code never |
| After design approved | `writing-plans` — detailed task plan |
| Executing the plan | `subagent-driven-development` or `executing-plans` |
| Any bug or unexpected behavior | `systematic-debugging` — root cause first, NO guessing |
| Before claiming anything is done | `verification-before-completion` — evidence before claims |
| Between tasks | `requesting-code-review` |
| When work is complete | `finishing-a-development-branch` |

### Core Principles (from superpowers)
- **NEVER write code before design is approved** (brainstorming HARD-GATE)
- **Root cause before fixes** — no guessing, no quick patches
- **Evidence before claims** — run the command, read the output, THEN claim it works
- **TDD always** — write failing test first, watch it fail, then implement
- **YAGNI** — don't build what isn't needed
- **One problem per PR** — never bundle unrelated changes
