# Système d'inscription Miss & Mister - Les Cours Sonou

Système d'inscription en ligne pour le concours Miss & Mister de l'Institut Les Cours Sonou (Site Calavi).

## 📋 Fichiers

- `index.html` - Application complète (formulaire + dashboard admin)
- `supabase_setup.sql` - Script de création de la base de données
- `vercel.json` - Configuration Vercel

## 🚀 Déploiement sur Vercel

### Méthode 1 : Via le site Vercel (Recommandé)

1. Va sur [vercel.com](https://vercel.com)
2. Connecte-toi avec GitHub
3. Clique sur "Add New" → "Project"
4. Importe ce dossier
5. Clique sur "Deploy"

### Méthode 2 : Via CLI

```bash
# Installer Vercel CLI
npm i -g vercel

# Se connecter
vercel login

# Déployer
vercel
```

## 🔧 Configuration Supabase

1. Va sur [supabase.com](https://supabase.com)
2. Ouvre ton projet
3. Va dans **SQL Editor**
4. Copie et exécute le contenu de `supabase_setup.sql`
5. Les identifiants sont déjà configurés dans `index.html`

## ✅ Test

Une fois déployé sur Vercel :
1. Ouvre l'URL fournie par Vercel
2. Choisis Miss ou Mister
3. Remplis le formulaire
4. Clique sur "📊 Admin" pour voir le dashboard

## 🎯 Résumé

Le système est maintenant configuré pour utiliser la table `candidats` de Supabase avec tous les champs du formulaire complet.
