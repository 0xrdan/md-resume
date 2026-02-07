# md-resume

Write your resume in Markdown. Export to PDF.

No fancy editors. No fighting with formatting. Just markdown and a single command.

## Setup

Install [pandoc](https://pandoc.org/installing.html) and [weasyprint](https://doc.courtbouillon.org/weasyprint/stable/first_steps.html):

```bash
# macOS
brew install pandoc
pip install weasyprint

# Ubuntu/Debian
sudo apt install pandoc
pip install weasyprint
```

## Usage

1. Copy `template.md` to `resume.md`
2. Edit `resume.md` with your content
3. Build the PDF:

```bash
chmod +x build.sh
./build.sh
```

Custom input/output:

```bash
./build.sh my-resume.md my-resume.pdf
```

## Files

| File | Purpose |
|------|---------|
| `template.md` | Resume template — copy and fill in |
| `style.css` | PDF styling — tight margins, clean typography |
| `build.sh` | Build script — converts markdown to PDF |

## Customization

Edit `style.css` to adjust styling. Key settings:

- `@page { margin }` — page margins (default: 0.45in)
- `body { font-size }` — base font size (default: 10pt)
- `h1 { font-size }` — name size (default: 18pt)

## License

MIT
