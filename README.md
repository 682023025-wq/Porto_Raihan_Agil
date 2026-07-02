# Porto_Raihan_Agil

Portfolio website built with Next.js + Supabase.

## Struktur Proyek

```
├── portfolio-app/          # Next.js app (frontend + backend)
│   ├── app/                # Pages & layouts
│   ├── supabase/
│   │   └── migrations/     # Database migrations
│   └── public/             # Static assets
├── .vscode/
│   └── mcp.json            # MCP server config (Supabase)
└── .gitignore
```

## Tech Stack

- **Frontend**: Next.js
- **Database**: Supabase (PostgreSQL)
- **Storage**: Cloudinary (images)
- **Email**: Resend

## Setup

1. Clone repo
2. `cd portfolio-app && npm install`
3. Copy `.env.example` to `.env.local` dan isi credentials
4. `npm run dev` untuk development

## Database

Migrasi SQL ada di `portfolio-app/supabase/migrations/`. Jalankan via Supabase Dashboard SQL Editor atau Supabase CLI.
