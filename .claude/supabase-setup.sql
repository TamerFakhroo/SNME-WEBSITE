-- ============================================================
-- SNME WEBSITE — SUPABASE DATABASE SETUP
-- Run this in: Supabase Dashboard → SQL Editor → New Query
-- ============================================================

-- 1. RFQ SUBMISSIONS TABLE
-- ============================================================
CREATE TABLE IF NOT EXISTS rfq_submissions (
  id              UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at      TIMESTAMPTZ DEFAULT NOW(),
  first_name      TEXT NOT NULL,
  last_name       TEXT NOT NULL,
  company         TEXT NOT NULL,
  country         TEXT NOT NULL,
  email           TEXT,
  phone           TEXT,
  service         TEXT NOT NULL,
  timeline        TEXT NOT NULL,
  load_scope      TEXT,
  description     TEXT,
  status          TEXT DEFAULT 'new' CHECK (status IN ('new', 'reviewed', 'quoted', 'closed')),
  assigned_to     TEXT,
  notes           TEXT
);

-- 2. ENABLE ROW LEVEL SECURITY
-- ============================================================
ALTER TABLE rfq_submissions ENABLE ROW LEVEL SECURITY;

-- Allow anyone to INSERT (submit a form)
CREATE POLICY "Anyone can submit RFQ"
  ON rfq_submissions
  FOR INSERT
  TO anon
  WITH CHECK (true);

-- Only authenticated users (your team) can SELECT / UPDATE
CREATE POLICY "Authenticated users can view submissions"
  ON rfq_submissions
  FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Authenticated users can update submissions"
  ON rfq_submissions
  FOR UPDATE
  TO authenticated
  USING (true);

-- 3. CAREER APPLICATIONS TABLE (for future use)
-- ============================================================
CREATE TABLE IF NOT EXISTS career_applications (
  id              UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  created_at      TIMESTAMPTZ DEFAULT NOW(),
  full_name       TEXT NOT NULL,
  email           TEXT NOT NULL,
  phone           TEXT,
  location        TEXT,
  experience      TEXT,
  position        TEXT,
  cv_url          TEXT,
  status          TEXT DEFAULT 'new' CHECK (status IN ('new', 'reviewed', 'shortlisted', 'rejected'))
);

ALTER TABLE career_applications ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can submit application"
  ON career_applications
  FOR INSERT
  TO anon
  WITH CHECK (true);

CREATE POLICY "Authenticated users can view applications"
  ON career_applications
  FOR SELECT
  TO authenticated
  USING (true);

-- ============================================================
-- DONE. Your tables are ready.
-- Next: copy your Project URL and anon key from
-- Supabase → Settings → API and add them to Vercel env vars.
-- ============================================================
