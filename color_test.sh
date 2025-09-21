#!/bin/bash

# ===========================================
# BASH COLOR PALETTE - LENGKAP
# ===========================================

# ANSI Color Codes untuk Bash
# Format: \033[CODEm atau \e[CODEm

# ===========================================
# 1. WARNA TEKS (FOREGROUND)
# ===========================================
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'

# WARNA TERANG (BRIGHT)
BRIGHT_BLACK='\033[0;90m'      # Dark Gray
BRIGHT_RED='\033[0;91m'
BRIGHT_GREEN='\033[0;92m'
BRIGHT_YELLOW='\033[0;93m'
BRIGHT_BLUE='\033[0;94m'
BRIGHT_PURPLE='\033[0;95m'
BRIGHT_CYAN='\033[0;96m'
BRIGHT_WHITE='\033[0;97m'

# ===========================================
# 2. WARNA BACKGROUND
# ===========================================
BG_BLACK='\033[40m'
BG_RED='\033[41m'
BG_GREEN='\033[42m'
BG_YELLOW='\033[43m'
BG_BLUE='\033[44m'
BG_PURPLE='\033[45m'
BG_CYAN='\033[46m'
BG_WHITE='\033[47m'

# BACKGROUND TERANG
BG_BRIGHT_BLACK='\033[100m'    # Dark Gray Background
BG_BRIGHT_RED='\033[101m'
BG_BRIGHT_GREEN='\033[102m'
BG_BRIGHT_YELLOW='\033[103m'
BG_BRIGHT_BLUE='\033[104m'
BG_BRIGHT_PURPLE='\033[105m'
BG_BRIGHT_CYAN='\033[106m'
BG_BRIGHT_WHITE='\033[107m'

# ===========================================
# 3. STYLE TEXT
# ===========================================
BOLD='\033[1m'
DIM='\033[2m'
ITALIC='\033[3m'
UNDERLINE='\033[4m'
BLINK='\033[5m'
REVERSE='\033[7m'
STRIKETHROUGH='\033[9m'

# ===========================================
# 4. RESET
# ===========================================
RESET='\033[0m'    # Reset semua formatting
NC='\033[0m'       # No Color (alias untuk RESET)

# ===========================================
# 5. WARNA 256 (untuk terminal yang support)
# ===========================================
# Format: \033[38;5;NUMBERm untuk foreground
# Format: \033[48;5;NUMBERm untuk background
# NUMBER: 0-255

# Contoh warna 256:
COLOR_256_RED='\033[38;5;196m'
COLOR_256_GREEN='\033[38;5;46m'
COLOR_256_BLUE='\033[38;5;21m'
COLOR_256_ORANGE='\033[38;5;208m'
COLOR_256_PINK='\033[38;5;205m'

# ===========================================
# 6. TRUE COLOR / RGB (24-bit)
# ===========================================
# Format: \033[38;2;R;G;Bm untuk foreground
# Format: \033[48;2;R;G;Bm untuk background
# R, G, B: 0-255

# Contoh RGB colors:
RGB_RED='\033[38;2;255;0;0m'
RGB_GREEN='\033[38;2;0;255;0m'
RGB_BLUE='\033[38;2;0;0;255m'
RGB_ORANGE='\033[38;2;255;165;0m'
RGB_PURPLE='\033[38;2;128;0;128m'

# ===========================================
# FUNGSI DEMO
# ===========================================

demo_basic_colors() {
    echo "=== BASIC COLORS ==="
    echo -e "${BLACK}Black Text${RESET}"
    echo -e "${RED}Red Text${RESET}"
    echo -e "${GREEN}Green Text${RESET}"
    echo -e "${YELLOW}Yellow Text${RESET}"
    echo -e "${BLUE}Blue Text${RESET}"
    echo -e "${PURPLE}Purple Text${RESET}"
    echo -e "${CYAN}Cyan Text${RESET}"
    echo -e "${WHITE}White Text${RESET}"
}

demo_bright_colors() {
    echo -e "\n=== BRIGHT COLORS ==="
    echo -e "${BRIGHT_BLACK}Bright Black (Gray)${RESET}"
    echo -e "${BRIGHT_RED}Bright Red${RESET}"
    echo -e "${BRIGHT_GREEN}Bright Green${RESET}"
    echo -e "${BRIGHT_YELLOW}Bright Yellow${RESET}"
    echo -e "${BRIGHT_BLUE}Bright Blue${RESET}"
    echo -e "${BRIGHT_PURPLE}Bright Purple${RESET}"
    echo -e "${BRIGHT_CYAN}Bright Cyan${RESET}"
    echo -e "${BRIGHT_WHITE}Bright White${RESET}"
}

demo_backgrounds() {
    echo -e "\n=== BACKGROUNDS ==="
    echo -e "${BG_BLACK}${WHITE} Black Background ${RESET}"
    echo -e "${BG_RED}${WHITE} Red Background ${RESET}"
    echo -e "${BG_GREEN}${BLACK} Green Background ${RESET}"
    echo -e "${BG_YELLOW}${BLACK} Yellow Background ${RESET}"
    echo -e "${BG_BLUE}${WHITE} Blue Background ${RESET}"
    echo -e "${BG_PURPLE}${WHITE} Purple Background ${RESET}"
    echo -e "${BG_CYAN}${BLACK} Cyan Background ${RESET}"
    echo -e "${BG_WHITE}${BLACK} White Background ${RESET}"
}

demo_styles() {
    echo -e "\n=== TEXT STYLES ==="
    echo -e "${BOLD}Bold Text${RESET}"
    echo -e "${DIM}Dim Text${RESET}"
    echo -e "${ITALIC}Italic Text${RESET}"
    echo -e "${UNDERLINE}Underlined Text${RESET}"
    echo -e "${BLINK}Blinking Text${RESET}"
    echo -e "${REVERSE}Reversed Text${RESET}"
    echo -e "${STRIKETHROUGH}Strikethrough Text${RESET}"
}

demo_256_colors() {
    echo -e "\n=== 256 COLORS (Sample) ==="
    for i in {0..255}; do
        printf "\033[38;5;${i}m%3d\033[0m " "$i"
        if (( (i + 1) % 16 == 0 )); then
            echo
        fi
    done
    echo
}

demo_rgb_colors() {
    echo -e "\n=== RGB COLORS ==="
    echo -e "${RGB_RED}RGB Red (255,0,0)${RESET}"
    echo -e "${RGB_GREEN}RGB Green (0,255,0)${RESET}"
    echo -e "${RGB_BLUE}RGB Blue (0,0,255)${RESET}"
    echo -e "${RGB_ORANGE}RGB Orange (255,165,0)${RESET}"
    echo -e "${RGB_PURPLE}RGB Purple (128,0,128)${RESET}"
}

# ===========================================
# CONTOH PENGGUNAAN
# ===========================================

show_all_demos() {
    echo "BASH COLOR PALETTE DEMO"
    echo "======================="
    
    demo_basic_colors
    demo_bright_colors
    demo_backgrounds
    demo_styles
    demo_256_colors
    demo_rgb_colors
    
    echo -e "\n${BOLD}${GREEN}Demo selesai!${RESET}"
}

# Jalankan demo jika script dieksekusi langsung
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    show_all_demos
fi

# ===========================================
# CARA PENGGUNAAN:
# ===========================================
# 1. Source file ini: source color_palette.sh
# 2. Gunakan variabel: echo -e "${RED}Teks merah${RESET}"
# 3. Jalankan demo: show_all_demos
# ===========================================