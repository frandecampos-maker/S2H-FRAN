#!/usr/bin/env bash
# Gera index.html (documento completo, para abrir no navegador ou no GitHub Pages)
# a partir de src/thp.html (o mesmo conteúdo publicado como Artifact).
set -euo pipefail
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n</head>\n<body>\n'
  cat src/thp.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html gerado"
