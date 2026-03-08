-- ============================================================
-- TABLE SUPABASE — Candidats Miss & Mister des Cours Sonou
-- Copiez ce SQL dans : Supabase > SQL Editor > New Query
-- ============================================================

CREATE TABLE candidats (
  id               BIGSERIAL PRIMARY KEY,
  concours_type    TEXT NOT NULL,           -- 'Miss' ou 'Mister'

  -- Infos personnelles
  nom              TEXT NOT NULL,
  prenoms          TEXT NOT NULL,
  date_naissance   TEXT,
  lieu_naissance   TEXT,
  age              INTEGER,
  nationalite      TEXT,
  adresse          TEXT,
  telephone        TEXT NOT NULL,
  email            TEXT,

  -- Parcours académique
  niveau           TEXT,
  filiere          TEXT,
  matricule        TEXT,

  -- Fiche physique
  taille           TEXT,
  poids            TEXT,
  style_vestimentaire TEXT,
  couleur_preferee TEXT,
  sport_prefere    TEXT,

  -- Personnalité
  loisirs          TEXT,
  langues          TEXT,
  qualites         TEXT,
  defauts          TEXT,
  citation         TEXT,

  -- Motivation
  motivation1      TEXT,
  motivation2      TEXT,

  -- Médias
  photo            TEXT,       -- Base64 image
  signature        TEXT,       -- Base64 signature canvas
  date_signature   TEXT,

  created_at       TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================================
-- SÉCURITÉ : Activer Row Level Security
-- ============================================================
ALTER TABLE candidats ENABLE ROW LEVEL SECURITY;

-- Permettre à tout le monde d'insérer (formulaire public)
CREATE POLICY "Insert public" ON candidats
  FOR INSERT WITH CHECK (true);

-- Permettre la lecture seulement avec la clé (dashboard admin)
CREATE POLICY "Read all" ON candidats
  FOR SELECT USING (true);

-- Permettre la mise à jour (admin)
CREATE POLICY "Update all" ON candidats
  FOR UPDATE USING (true);

-- Permettre la suppression (admin)
CREATE POLICY "Delete all" ON candidats
  FOR DELETE USING (true);

-- ============================================================
-- INDEX pour la recherche rapide
-- ============================================================
CREATE INDEX idx_candidats_nom ON candidats (nom);
CREATE INDEX idx_candidats_type ON candidats (concours_type);
CREATE INDEX idx_candidats_created ON candidats (created_at DESC);
