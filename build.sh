#!/bin/bash

INPUT="${1:-resume.md}"
OUTPUT="${2:-${INPUT%.md}.pdf}"

# Auto-detect stylesheet: cover letters get coverletter.css, everything else gets style.css
if [[ "$INPUT" == *cover* ]]; then
  STYLE="${3:-coverletter.css}"
else
  STYLE="${3:-style.css}"
fi

if ! command -v pandoc &> /dev/null; then
  echo "Error: pandoc is not installed. See README.md for setup."
  exit 1
fi

if ! command -v weasyprint &> /dev/null; then
  echo "Error: weasyprint is not installed. See README.md for setup."
  exit 1
fi

if [ ! -f "$INPUT" ]; then
  echo "Error: $INPUT not found."
  echo "Usage: ./build.sh [input.md] [output.pdf]"
  exit 1
fi

pandoc "$INPUT" --standalone --pdf-engine weasyprint --css "$STYLE" -o "$OUTPUT"

echo "Built $OUTPUT from $INPUT"
