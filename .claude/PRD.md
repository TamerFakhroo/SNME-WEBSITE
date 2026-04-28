# SNME Website — Product Requirements Document

**Project:** Sarens Nass Middle East — Corporate Website  
**Owner:** Regional Marketing Manager, SNME  
**Stack:** HTML/CSS/JS → GitHub → Vercel (hosting) + Supabase (backend)  
**Last Updated:** April 2026

---

## 1. Project Overview

A high-performance, single-page corporate website for Sarens Nass Middle East (SNME) — the GCC's leading heavy lift, crane rental, and engineered transport company. The site serves as the primary digital presence across all six GCC markets.

---

## 2. Business Goals

| Goal | Description |
|------|-------------|
| **Lead Generation** | Capture RFQ submissions from contractors, EPC firms, and oil & gas operators |
| **Brand Authority** | Position SNME as the premium, technically superior choice in GCC heavy lift |
| **Market Coverage** | Represent all 6 GCC markets: Bahrain, KSA, UAE, Qatar, Kuwait, Oman |
| **Client Trust** | Showcase landmark projects, certifications, and client logos |

---

## 3. Target Audience

- Oil & Gas majors and contractors (QatarEnergy, ADNOC, Saudi Aramco ecosystem)
- EPC contractors (Bechtel, Petrofac, L&T, Técnicas Reunidas)
- Government & infrastructure bodies (NEOM, PIF projects, national utilities)
- Procurement and project management professionals

---

## 4. Site Sections

| Section | ID | Purpose |
|---------|----|---------|
| Hero | `#hero` | Brand intro, motto, CTA buttons, stats counters |
| Services | `#services` | Core service offerings |
| Fleet | `#fleet` | Equipment catalogue with crane finder tool |
| Equipment Selector | `#crane-finder` | Interactive crane matching tool |
| Market Segments | `#segments` | Industries served |
| GCC Operations | `#countries` | Per-country presence and capabilities |
| Beyond Lifting / Partners | `#platform` | Joint ventures and strategic alliances |
| Landmark Projects | `#projects` | Featured project showcase |
| News & Insights | `#insights` | Latest news and articles |
| ESG | `#esg` | Sustainability and ESG commitments |
| Leadership | `#leadership` | Leadership team profiles |
| Careers | `#careers` | Job opportunities |
| RFQ Form | `#rfq` | Contact and project enquiry form |
| Footer | — | Navigation, markets, policies, legal |

---

## 5. Tech Stack

| Layer | Technology | Purpose |
|-------|-----------|---------|
| Frontend | HTML / CSS / Vanilla JS | Single-file website |
| Hosting | Vercel | Auto-deploy from GitHub |
| Source Control | GitHub | Version control, deployment trigger |
| Backend/DB | Supabase | RFQ form submissions, contact data |
| Media (images) | Storyblok CDN | Existing image hosting |
| Media (video) | YouTube (unlisted embed) | Hero background video |
| New logos | `/public/assets/logos/` | Locally hosted in repo |

---

## 6. Forms & Data

### RFQ Form (`#rfq`)
Fields to capture and store in Supabase:
- Full Name
- Company Name
- Email Address
- Phone Number
- Country
- Service Required (dropdown)
- Project Description
- Lift Details (tonnage, dimensions)
- Preferred Timeline
- Date Submitted (auto)

**Flow:** Form submit → Supabase `rfq_submissions` table → Email notification to SNME team

---

## 7. Design System

| Element | Value |
|---------|-------|
| Primary Blue | `#2A5E97` |
| Mid Grey | `#8C9399` |
| Dark Grey (text on light) | `#3a3f42` |
| Navy | `#1e3a5f` |
| Yellow Accent | `#FFE300` |
| Font | Inter / system-sans |
| Section headings | First word blue `#2A5E97`, rest grey `#8C9399` (50/50 split) |
| Motto (dark bg) | White `#ffffff` |
| Motto (light bg) | Dark grey `#3a3f42` |

---

## 8. Media Assets

| Asset | Location | Notes |
|-------|----------|-------|
| QatarEnergy logo | `assets/logos/qatar-energy.png` | Locally hosted |
| ADNOC logo | `assets/logos/adnoc.svg` | Locally hosted |
| Qatar Petroleum logo | `assets/logos/qatar-petroleum.png` | Locally hosted |
| All other logos | Storyblok CDN | External URLs |
| Hero video | YouTube embed | Unlisted |
| Project photos | Storyblok CDN | External URLs |

---

## 9. Future Roadmap

- [ ] Connect RFQ form to Supabase
- [ ] Add email notification on form submission
- [ ] Arabic (RTL) language toggle — structure already in place
- [ ] Migrate remaining images from Storyblok to Cloudinary
- [ ] Add CRM integration (HubSpot or Salesforce)
- [ ] Add WhatsApp direct chat button
- [ ] SEO optimisation per GCC market
