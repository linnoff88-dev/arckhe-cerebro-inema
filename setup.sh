#!/usr/bin/env bash
#
# Cérebro INEMA — instalador (Linux / macOS)
# Cria um vault com a estrutura dos 3 cérebros e instala as skills.
#
# Uso:
#   ./setup.sh [destino]
# Se [destino] for omitido, cria o vault em ~/cerebro
#
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${1:-$HOME/cerebro}"

echo "🧠  Cérebro INEMA — instalador"
echo "    origem:  $REPO_DIR"
echo "    destino: $DEST"
echo ""

# --- SO -------------------------------------------------------------------
case "$(uname -s)" in
  Linux*)  OS="Linux" ;;
  Darwin*) OS="macOS" ;;
  *)       OS="desconhecido" ;;
esac
echo "    sistema: $OS"

# --- destino --------------------------------------------------------------
if [ -e "$DEST" ] && [ -n "$(ls -A "$DEST" 2>/dev/null || true)" ]; then
  echo ""
  echo "⚠️   $DEST já existe e nêo está vazio."
  printf "    Continuar e mesclar a estrutura mesmo assim? [s/N] "
  read -r RESP
  case "$RESP" in
    s|S|sim|Sim) ;;
    *) echo "Abortado."; exit 1 ;;
  esac
fi

mkdir -p "$DEST"

# --- estrutura dos 3 cérebros --------------------------------------------
echo ""
echo "📁  Criando a estrutura dos 3 cérebros..."
cp -R "$REPO_DIR/vault-template/." "$DEST/"

# --- arquivos do roteador + skills + scripts ------------------------------
echo "🧩  Instalando CLAUDE.md, skills e scripts..."
cp "$REPO_DIR/CLAUDE.md"        "$DEST/CLAUDE.md"
cp "$REPO_DIR/memory.md"        "$DEST/memory.md"
cp -R "$REPO_DIR/.claude"       "$DEST/.claude"
cp -R "$REPO_DIR/scripts"       "$DEST/scripts"
cp "$REPO_DIR/requirements.txt" "$DEST/requirements.txt"
[ -f "$REPO_DIR/.env.example" ] && cp "$REPO_DIR/.env.example" "$DEST/.env.example" || true

# --- Obsidian (opcional) --------------------------------------------------
if [ "$OS" = "macOS" ] && command -v open >/dev/null 2>&1; then
  open -a Obsidian "$DEST" 2>/dev/null || true
fi

echo ""
echo "✅  Pronto. Seu cérebro está em: $DEST"
echo ""
echo "Próximos passos:"
echo "  1. cd \"$DEST\""
echo "  2. Abra o Claude Code nessa pasta e rode:  /setup-cerebro"
echo "  3. (opcional) Camada de formato:  /plugin marketplace add kepano/obsidian-skills"
echo "  4. (opcional) Ingestêo de arquivos:"
echo "       pip install -r requirements.txt"
echo "       cp .env.example .env   # coloque sua GEMINI_API_KEY"
echo ""
echo "Skills: /setup-cerebro /triagem /daily /tldr /nota /socratica"
