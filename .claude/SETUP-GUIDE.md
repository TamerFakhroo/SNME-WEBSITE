# SNME Website — Complete Setup Guide
# GitHub → Vercel → Supabase

---

## STEP 1 — SUPABASE (Database)

1. Go to https://supabase.com → your project
2. Click **SQL Editor** in the left sidebar
3. Paste the contents of `supabase/schema.sql` and click **Run**
4. You should see: `rfq_submissions` table created ✅
5. Go to **Settings → API** and copy:
   - **Project URL** → looks like `https://xxxx.supabase.co`
   - **Publishable (anon) key** → starts with `sb_publishable_...`

---

## STEP 2 — GITHUB (Push the project)

### Option A — GitHub Desktop (easiest)
1. Download GitHub Desktop: https://desktop.github.com
2. Clone your repo: `https://github.com/TamerFakhroo/SNME-WEBSITE`
3. Copy ALL files from the `snme-website/` folder into the cloned repo folder
4. Commit with message: "Initial website launch with Supabase integration"
5. Push to `main`

### Option B — Terminal
```bash
git clone https://github.com/TamerFakhroo/SNME-WEBSITE
cd SNME-WEBSITE
# Copy all files from snme-website/ folder here
git add .
git commit -m "Initial website launch with Supabase integration"
git push origin main
```

### What to push (all of these):
```
public/
  index.html
  assets/logos/qatar-energy.png
  assets/logos/adnoc.svg
  assets/logos/qatar-petroleum.png
supabase/
  schema.sql
vercel.json
package.json
inject-env.js
README.md
.gitignore
```

### What NOT to push (.gitignore handles this):
```
.claude/   ← stays local, never on GitHub
```

---

## STEP 3 — VERCEL (Hosting + Auto-deploy)

1. Go to https://vercel.com → **Add New Project**
2. Click **Import Git Repository**
3. Select `TamerFakhroo/SNME-WEBSITE`
4. Configure:
   - **Framework Preset:** Other
   - **Root Directory:** `./` (leave default)
   - **Build Command:** `node inject-env.js`
   - **Output Directory:** `public`
5. Before deploying, click **Environment Variables** and add:

   | Name | Value |
   |------|-------|
   | `SUPABASE_URL` | `https://mlkteenajiuuewkwbkqn.supabase.co` |
   | `SUPABASE_ANON_KEY` | *(paste your publishable anon key here)* |

6. Click **Deploy** ✅

---

## STEP 4 — TEST

1. Visit your Vercel URL (e.g. `https://snme-website.vercel.app`)
2. Scroll to the RFQ form
3. Fill in: First Name, Last Name, Company → Submit
4. Go to Supabase → **Table Editor → rfq_submissions**
5. You should see the submission appear ✅

---

## STEP 5 — CUSTOM DOMAIN (Optional)

1. In Vercel → your project → **Settings → Domains**
2. Add `www.snme.com` or your preferred domain
3. Update your DNS records as instructed by Vercel

---

## FUTURE: Email Notifications

When a new RFQ is submitted, you can trigger an email via:
- **Supabase Edge Functions** + Resend (https://resend.com) — recommended
- Or Zapier: Supabase → Gmail/Outlook notification

Ask Claude to set this up when ready.

---

## ONGOING WORKFLOW

Every time you want to make a change:
1. Tell Claude what you want to change
2. Claude edits `public/index.html`
3. Download the updated file
4. Replace in your GitHub repo
5. Vercel auto-deploys within ~30 seconds ✅
