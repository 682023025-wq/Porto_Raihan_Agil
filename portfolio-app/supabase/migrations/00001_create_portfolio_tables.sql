-- 1. TABEL PROFIL (Data Diri & Kontak)
CREATE TABLE profil (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nama_lengkap TEXT,
  nama_panggilan TEXT,
  profesi TEXT,
  tagline TEXT,
  latar_belakang TEXT,
  alamat TEXT,
  nomor_telepon TEXT,
  email TEXT,
  media_sosial JSONB, -- Untuk simpan IG, FB, TikTok, dll dalam format JSON
  url_linkedin TEXT,
  url_github TEXT,
  tampilkan_alamat BOOLEAN DEFAULT FALSE,
  tampilkan_telepon BOOLEAN DEFAULT FALSE,
  tampilkan_email BOOLEAN DEFAULT TRUE,
  diperbarui_pada TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 2. TABEL PENGALAMAN (Kerja, Magang, Organisasi, dll)
CREATE TABLE pengalaman (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  jenis TEXT CHECK (jenis IN ('Organisasi', 'Magang', 'Kerja', 'Kepanitiaan', 'Asdos')),
  judul TEXT NOT NULL,
  nama_institusi TEXT NOT NULL,
  tanggal_mulai TEXT NOT NULL,
  tanggal_selesai TEXT,
  deskripsi TEXT,
  urutan INT DEFAULT 0, -- Untuk mengatur urutan tampil
  ditampilkan BOOLEAN DEFAULT TRUE, -- Toggle tampil/sembunyi
  dibuat_pada TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. TABEL PROYEK
CREATE TABLE proyek (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nama TEXT NOT NULL,
  deskripsi TEXT,
  detail TEXT,
  url_web TEXT,
  url_github TEXT,
  url_gambar TEXT, -- Nanti diisi URL dari Cloudinary
  stack_teknologi TEXT[], -- Array of strings, misal: ['Next.js', 'Supabase']
  urutan INT DEFAULT 0,
  ditampilkan BOOLEAN DEFAULT TRUE,
  dibuat_pada TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. TABEL PENDIDIKAN
CREATE TABLE pendidikan (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  nama_institusi TEXT NOT NULL,
  jenjang TEXT,
  jurusan TEXT,
  tahun_mulai TEXT NOT NULL,
  tahun_selesai TEXT,
  ipk NUMERIC(3,2),
  deskripsi TEXT,
  url_logo TEXT, -- Nanti diisi URL dari Cloudinary
  urutan INT DEFAULT 0,
  ditampilkan BOOLEAN DEFAULT TRUE,
  dibuat_pada TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);
