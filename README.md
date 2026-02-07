# md-resume

Write your resume and cover letters in Markdown. Export to PDF.

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

### Cover Letters

Files with "cover" in the name automatically use `coverletter.css`:

```bash
./build.sh cover-letter-role.md cover-letter-role.pdf
```

You can also override the stylesheet explicitly:

```bash
./build.sh document.md document.pdf coverletter.css
```

## Files

| File | Purpose |
|------|---------|
| `template.md` | Resume template — copy and fill in |
| `coverletter-template.md` | Cover letter template |
| `style.css` | Resume styling — tight margins, dense layout |
| `coverletter.css` | Cover letter styling — wider margins, letter spacing |
| `build.sh` | Build script — auto-detects stylesheet |

## Customization

Edit `style.css` (resume) or `coverletter.css` (letters) to adjust styling.

Resume key settings:

- `@page { margin }` — page margins (default: 0.45in)
- `body { font-size }` — base font size (default: 10pt)
- `h1 { font-size }` — name size (default: 18pt)

Cover letter key settings:

- `@page { margin }` — page margins (default: 0.75in 0.85in)
- `body { font-size }` — body text (default: 11pt)
- `li { break-inside }` — prevents bullet points from splitting across pages

## License

MIT
