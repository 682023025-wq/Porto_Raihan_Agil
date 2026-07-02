# Portfolio App

Next.js portfolio app with Supabase.

## Database

Migrasi SQL ada di `supabase/migrations/`. Jalankan via Supabase Dashboard SQL Editor:

1. Buka https://supabase.com/dashboard/project/rqprajvkzcpqhuyjgvuf
2. SQL Editor → paste isi file migration → Run

### Tabel

- `profil` — data diri & kontak
- `pengalaman` — organisasi, magang, kerja, kepanitiaan, asdos
- `proyek` — portofolio proyek
- `pendidikan` — riwayat pendidikan

## Env Variables

```
NEXT_PUBLIC_SUPABASE_URL=...
NEXT_PUBLIC_SUPABASE_ANON_KEY=...
CLOUDINARY_CLOUD_NAME=...
RESEND_API_KEY=...
```

## Scripts

```bash
npm run dev      # Development server
npm run build    # Production build
npm start       # Start production
