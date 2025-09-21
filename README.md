# Bash Color Palette 🎨

Koleksi lengkap kode warna ANSI untuk terminal bash/shell scripting.

## 📋 Daftar Isi

- [Instalasi](#instalasi)
- [Penggunaan Dasar](#penggunaan-dasar)
- [Warna Dasar](#warna-dasar)
- [Warna Terang](#warna-terang)
- [Warna Background](#warna-background)
- [Style Teks](#style-teks)
- [256 Colors](#256-colors)
- [RGB/True Colors](#rgbtrue-colors)
- [Contoh Penggunaan](#contoh-penggunaan)
- [Tips & Tricks](#tips--tricks)

## 🚀 Instalasi

Tidak perlu instalasi khusus. Cukup copy kode warna yang dibutuhkan ke script Anda.

## 📖 Penggunaan Dasar

```bash
# Format dasar
echo -e "\033[CODEm Teks Anda \033[0m"

# Atau menggunakan variabel
RED='\033[0;31m'
RESET='\033[0m'
echo -e "${RED}Teks merah${RESET}"
```

## 🎨 Warna Dasar

| Warna | Kode | Variabel |
|-------|------|----------|
| Hitam | `\033[0;30m` | `BLACK` |
| Merah | `\033[0;31m` | `RED` |
| Hijau | `\033[0;32m` | `GREEN` |
| Kuning | `\033[0;33m` | `YELLOW` |
| Biru | `\033[0;34m` | `BLUE` |
| Ungu | `\033[0;35m` | `PURPLE` |
| Cyan | `\033[0;36m` | `CYAN` |
| Putih | `\033[0;37m` | `WHITE` |

### Contoh:
```bash
RED='\033[0;31m'
GREEN='\033[0;32m'
RESET='\033[0m'

echo -e "${RED}Error: File tidak ditemukan${RESET}"
echo -e "${GREEN}Sukses: File berhasil disimpan${RESET}"
```

## ✨ Warna Terang

| Warna | Kode | Variabel |
|-------|------|----------|
| Abu-abu | `\033[0;90m` | `BRIGHT_BLACK` |
| Merah Terang | `\033[0;91m` | `BRIGHT_RED` |
| Hijau Terang | `\033[0;92m` | `BRIGHT_GREEN` |
| Kuning Terang | `\033[0;93m` | `BRIGHT_YELLOW` |
| Biru Terang | `\033[0;94m` | `BRIGHT_BLUE` |
| Ungu Terang | `\033[0;95m` | `BRIGHT_PURPLE` |
| Cyan Terang | `\033[0;96m` | `BRIGHT_CYAN` |
| Putih Terang | `\033[0;97m` | `BRIGHT_WHITE` |

## 🌈 Warna Background

| Background | Kode | Variabel |
|------------|------|----------|
| Hitam | `\033[40m` | `BG_BLACK` |
| Merah | `\033[41m` | `BG_RED` |
| Hijau | `\033[42m` | `BG_GREEN` |
| Kuning | `\033[43m` | `BG_YELLOW` |
| Biru | `\033[44m` | `BG_BLUE` |
| Ungu | `\033[45m` | `BG_PURPLE` |
| Cyan | `\033[46m` | `BG_CYAN` |
| Putih | `\033[47m` | `BG_WHITE` |

### Background Terang:
Tambahkan `60` ke kode background biasa: `\033[100m` - `\033[107m`

## 📝 Style Teks

| Style | Kode | Variabel |
|-------|------|----------|
| **Bold** | `\033[1m` | `BOLD` |
| Dim | `\033[2m` | `DIM` |
| *Italic* | `\033[3m` | `ITALIC` |
| <u>Underline</u> | `\033[4m` | `UNDERLINE` |
| Blink | `\033[5m` | `BLINK` |
| Reverse | `\033[7m` | `REVERSE` |
| ~~Strikethrough~~ | `\033[9m` | `STRIKETHROUGH` |
| Reset | `\033[0m` | `RESET` atau `NC` |

### Contoh Kombinasi Style:
```bash
BOLD='\033[1m'
RED='\033[0;31m'
UNDERLINE='\033[4m'
RESET='\033[0m'

echo -e "${BOLD}${RED}${UNDERLINE}Teks bold, merah, dan underline${RESET}"
```

## 🎯 256 Colors

Untuk terminal yang mendukung 256 warna:

```bash
# Foreground: \033[38;5;NUMBERm
# Background: \033[48;5;NUMBERm
# NUMBER: 0-255

echo -e "\033[38;5;196mMerah Cerah\033[0m"
echo -e "\033[38;5;46mHijau Neon\033[0m"
echo -e "\033[38;5;21mBiru Dalam\033[0m"
```

### Kategori Warna 256:
- **0-15**: Warna standar (sama dengan 8+8 warna dasar)
- **16-231**: 216 warna dalam kubus RGB 6×6×6
- **232-255**: 24 tingkat grayscale

## 🌟 RGB/True Colors

Untuk terminal modern yang mendukung 24-bit color:

```bash
# Format: \033[38;2;R;G;Bm (foreground)
# Format: \033[48;2;R;G;Bm (background)
# R, G, B: 0-255

echo -e "\033[38;2;255;0;0mMerah RGB (255,0,0)\033[0m"
echo -e "\033[38;2;0;255;0mHijau RGB (0,255,0)\033[0m"
echo -e "\033[38;2;255;165;0mOrange RGB (255,165,0)\033[0m"
```

## 💡 Contoh Penggunaan

### 1. Script Logging
```bash
#!/bin/bash

# Definisi warna
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RESET='\033[0m'

# Fungsi logging
log_error() {
    echo -e "${RED}[ERROR]${RESET} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${RESET} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${RESET} $1"
}

log_info() {
    echo -e "${BLUE}[INFO]${RESET} $1"
}

# Penggunaan
log_info "Memulai proses backup..."
log_warning "Disk space hampir penuh"
log_success "Backup berhasil diselesaikan"
log_error "Gagal menghapus file temporary"
```

### 2. Progress Bar Berwarna
```bash
#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
RESET='\033[0m'

show_progress() {
    local progress=$1
    local total=50
    local completed=$((progress * total / 100))
    local remaining=$((total - completed))
    
    printf "\rProgress: ["
    printf "${GREEN}%*s${RESET}" $completed ""
    printf "${RED}%*s${RESET}" $remaining ""
    printf "] ${YELLOW}%d%%${RESET}" $progress
}

# Simulasi progress
for i in {0..100}; do
    show_progress $i
    sleep 0.1
done
echo
```

### 3. Menu Interaktif
```bash
#!/bin/bash

BOLD='\033[1m'
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
RESET='\033[0m'

show_menu() {
    echo -e "${BOLD}${BLUE}=== MENU UTAMA ===${RESET}"
    echo -e "${GREEN}1.${RESET} Lihat file"
    echo -e "${GREEN}2.${RESET} Edit file"
    echo -e "${GREEN}3.${RESET} Hapus file"
    echo -e "${RED}4.${RESET} Keluar"
    echo -e "${BLUE}Pilih opsi (1-4):${RESET} \c"
}
```

## 🛠️ Tips & Tricks

### 1. Cek Support Terminal
```bash
# Cek apakah terminal mendukung warna
if [[ -t 1 ]]; then
    # Terminal interaktif
    RED='\033[0;31m'
else
    # Output diredirect, jangan gunakan warna
    RED=''
fi
```

### 2. Fungsi Reset Otomatis
```bash
colored_echo() {
    local color=$1
    shift
    echo -e "${color}$@\033[0m"
}

# Penggunaan
colored_echo '\033[0;31m' "Pesan error"
```

### 3. Deteksi Support 256 Colors
```bash
if [[ $TERM == *"256color"* ]] || [[ $COLORTERM == *"256"* ]]; then
    # Gunakan 256 colors
    COLOR='\033[38;5;196m'
else
    # Fallback ke warna dasar
    COLOR='\033[0;31m'
fi
```

### 4. Nonaktifkan Warna untuk Pipe
```bash
# Cek apakah output ke terminal atau file/pipe
if [[ -t 1 ]]; then
    # Output ke terminal, gunakan warna
    USE_COLOR=true
else
    # Output diredirect, nonaktifkan warna
    USE_COLOR=false
fi
```

### 5. Variabel Lingkungan
```bash
# Cek variabel NO_COLOR (standar)
if [[ -n $NO_COLOR ]]; then
    # Jangan gunakan warna
    RED=""
    GREEN=""
else
    RED='\033[0;31m'
    GREEN='\033[0;32m'
fi
```

## ⚠️ Catatan Kompatibilitas

- **Bash 4.0+**: Semua fitur didukung
- **Zsh**: Kompatibel penuh
- **Fish**: Perlu sintaks sedikit berbeda
- **Windows**: Gunakan Windows Terminal atau WSL untuk support penuh
- **Terminal Lama**: Mungkin tidak mendukung 256 colors atau RGB

## 📚 Referensi

- [ANSI Escape Codes](https://en.wikipedia.org/wiki/ANSI_escape_code)
- [Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Terminal Colors](https://misc.flogisoft.com/bash/tip_colors_and_formatting)

---

**Selamat mewarnai script Anda! 🎨✨**
