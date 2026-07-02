<!-- BEGIN:nextjs-agent-rules -->
# This is NOT the Next.js you know

This version has breaking changes — APIs, conventions, and file structure may all differ from your training data. Read the relevant guide in `node_modules/next/dist/docs/` before writing any code. Heed deprecation notices.
<!-- END:nextjs-agent-rules -->

# Supabase Database

Migrasi SQL ada di `supabase/migrations/`.

## Tabel

| Tabel | Kegunaan |
|-------|----------|
| `profil` | Data diri & kontak (nama, medsos, toggle tampil) |
| `pengalaman` | Riwayat organisasi, magang, kerja (dengan CHECK jenis) |
| `proyek` | Portofolio proyek (stack TEXT[], url Cloudinary) |
| `pendidikan` | Riwayat pendidikan (IPK NUMERIC(3,2)) |

## Menjalankan Migrasi

Gunakan tool `execute_sql` dari MCP server `supabase`, atau jalankan manual via Supabase Dashboard SQL Editor.

## MCP

Config ada di `.vscode/mcp.json` (project root). Jika MCP tidak terhubung, pastikan VS Code sudah me-restart setelah file dibuat.
