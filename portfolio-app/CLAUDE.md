@AGENTS.md

## Project Context

Portfolio app: Next.js + Supabase + Cloudinary + Resend.

### Key Files

- `supabase/migrations/00001_create_portfolio_tables.sql` — database schema (profil, pengalaman, proyek, pendidikan)
- `.vscode/mcp.json` — MCP server config for Supabase (project ref: rqprajvkzcpqhuyjgvuf)

### Database Tables

| Table | Purpose |
|-------|---------|
| `profil` | Personal info, contact, social media links |
| `pengalaman` | Experience (org, internship, work, committee, TA) |
| `proyek` | Project portfolio with tech stack array |
| `pendidikan` | Education history with GPA |

### Conventions

- All tables use UUID primary keys with `gen_random_uuid()`
- All tables have `urutan` (display order), `ditampilkan` (visibility toggle), `dibuat_pada` (created timestamp)
- Column names use Bahasa Indonesia (snake_case)
- JSONB for flexible data (e.g., social media links)
- TEXT[] for array data (e.g., tech stack)
- NUMERIC(3,2) for GPA values
