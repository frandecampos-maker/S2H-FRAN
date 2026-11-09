#!/usr/bin/env bash
# Gera as versões completas (para abrir no navegador ou no GitHub Pages)
# a partir dos arquivos em src/ (o mesmo conteúdo publicado como Artifact).
#   src/thp.html  -> index.html  (painel do curso)
#   src/casa.html -> casa.html   (casa de ferramentas das alunas)
set -euo pipefail
cd "$(dirname "$0")"
wrap() {
  {
    printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
    cat "$1"
    printf '\n</body>\n</html>\n'
  } > "$2"
  echo "$2 gerado"
}
python3 tools/embed-fonts.py
wrap src/thp.html index.html
wrap src/casa.html casa.html
