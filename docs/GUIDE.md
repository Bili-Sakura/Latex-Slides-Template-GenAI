# Comprehensive Usage Guide

This guide provides detailed instructions on how to use the Keynote LaTeX Presentation Template.

## Features

✨ **Modern Design**
- Clean, minimalist layout optimized for 16:9 aspect ratio
- Automatic progress bar at the bottom of slides
- Slide numbers displayed in top-right corner
- Customizable footer with author/copyright information

📚 **Advanced Citation Management**
- Custom `keynote` biblatex style for clean, compact references
- Per-slide references displayed at bottom-left using `\bottomleftrefs`
- Manual reference control with `\setSlideBib{}`
- Support for multiple citation methods

🖼️ **Multi-page PDF Support**
- Include specific pages from multi-page PDFs
- Crop and adjust PDF regions with `adjustbox`
- Perfect for including specific pages from papers or figures

🎨 **Rich Content Support**
- Colored boxes with `tcolorbox`
- Professional tables with `booktabs`
- Side-by-side figures and two-column layouts
- Full math support with serif fonts

## Prerequisites

You need a LaTeX distribution installed:
- **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: TeX Live (usually available via package manager)

Required packages (usually included in full LaTeX distributions):
- `beamer`
- `biblatex` with `biber` backend
- `tikz`
- `tcolorbox`
- `booktabs`
- `adjustbox`

## Template Structure

```
.
├── keynote.tex              # Main document file
├── slides.tex               # Slide content (edit this)
├── references.bib           # Bibliography database
├── beamerthemeKeynote.sty   # Custom beamer theme
├── keynote.bbx              # Custom bibliography style
├── keynote.cbx              # Custom citation style
├── assets/                  # Images and figures folder
│   ├── README.md
│   ├── sample-diagram.pdf   # Example flow chart
│   ├── sample-plot.pdf      # Example data plot
│   ├── sample-photo.pdf     # Example image
│   ├── sample-logo.pdf      # Example logo
│   └── sample-multipage.pdf # Multi-page PDF example (4 pages)
├── demo/                    # Production-ready examples
│   └── world_models.pdf     # Advanced example presentation
├── clean_latex.sh           # Cleanup script for auxiliary files
└── README.md                # Quick start guide
```

## Usage Guide

### Basic Slide

```latex
\begin{frame}{Slide Title}
  Your content here
  
  \begin{itemize}
    \item Point one
    \item Point two
  \end{itemize}
\end{frame}
```

### Two-Column Layout

```latex
\begin{frame}{Two Columns}
  \begin{columns}
    \begin{column}{0.5\textwidth}
      Left column content
    \end{column}
    \begin{column}{0.5\textwidth}
      Right column content
    \end{column}
  \end{columns}
\end{frame}
```

### Including Figures

```latex
\begin{frame}{Figure Example}
  \begin{figure}
    \centering
    \includegraphics[width=0.6\linewidth]{myimage.png}
    \caption{Figure caption}
  \end{figure}
\end{frame}
```

### Side-by-Side Figures

```latex
\begin{frame}{Two Figures}
  \begin{figure}
    \centering
    \begin{minipage}{0.48\textwidth}
      \centering
      \includegraphics[width=0.9\linewidth]{image1.png}
      \caption{First image}
    \end{minipage}
    \hfill
    \begin{minipage}{0.48\textwidth}
      \centering
      \includegraphics[width=0.9\linewidth]{image2.png}
      \caption{Second image}
    \end{minipage}
  \end{figure}
\end{frame}
```

### Multi-page PDF Figures

Include a specific page from a multi-page PDF:

```latex
\includegraphics[width=0.7\linewidth, page=3]{multipage.pdf}
```

Crop specific regions from a PDF page:

```latex
\adjustbox{width=0.8\linewidth, trim=0 {0.2\height} 0 {0.3\height}, clip}{
  \includegraphics[page=2]{multipage.pdf}
}
```

The `trim` syntax is: `left bottom right top`, where values can be absolute (e.g., `10pt`) or relative (e.g., `{0.2\height}`).

### Tables

```latex
\begin{frame}{Professional Table}
  \begin{table}
    \centering
    \caption{Results comparison}
    \begin{tabular}{lcc}
      \toprule
      \textbf{Method} & \textbf{Accuracy} & \textbf{Speed} \\
      \midrule
      Method A & 85.3\% & 12.5 ms \\
      Method B & 87.1\% & 15.2 ms \\
      \bottomrule
    \end{tabular}
  \end{table}
\end{frame}
```

### Colored Boxes

```latex
\begin{tcolorbox}[colback=lightorange, colframe=orange, title=Important]
  This is a highlighted box for important information.
\end{tcolorbox}
```

### Mathematics

Inline math: `$E = mc^2$`

Display math:
```latex
$$\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}$$
```

Aligned equations:
```latex
\begin{align*}
  x &= a + b \\
  y &= c + d
\end{align*}
```

## Citation and References

This template supports two methods for managing references:

### Method 1: Per-Slide References with BibLaTeX

Use `refsection` to display references at the bottom of specific slides:

```latex
\begin{refsection}
\begin{frame}{My Slide}
  Important work by~\parencite{author2024} shows this result.
  
  \bottomleftrefs  % Display references at bottom-left
\end{frame}
\end{refsection}
```

### Method 2: Manual References

Set custom reference text manually:

```latex
\begin{frame}{My Slide}
  \setSlideBib{Author et al., Title, Conference 2024}
  
  Your content here...
  
  \clearSlideBib  % Clear for next slide
\end{frame}
```

### Final References Page

Include a final references slide with all citations:

```latex
\begin{frame}{References}
  \scriptsize
  \printbibliography[heading=none]
\end{frame}
```

## Customization

### Change Footer Text

Edit the footer that appears on every slide:

```latex
\setFooter{\copyright~2025~Your Name}
```

or

```latex
\setFooter{Conference Name 2025}
```

### Custom Colors

Define additional colors in the preamble:

```latex
\definecolor{mycolor}{RGB}{100, 150, 200}
```

Use them in your slides:

```latex
\textcolor{mycolor}{Colored text}
```

### Progress Bar Colors

Edit `beamerthemeKeynote.sty` to change progress bar colors:

```latex
\definecolor{progressouter}{RGB}{220,220,220}  % Background
\definecolor{progressinner}{RGB}{30,144,255}   % Filled portion
```

## Advanced Features

### Custom Title Slide

Replace the standard title page with a custom design:

```latex
\begin{frame}
  \centering
  \vspace{1em}
  \textbf{\Large Your Custom Title}
  
  Presented by Your Name\\
  \today\\
  \small\href{mailto:you@example.com}{you@example.com}
  
  \begin{figure}
    \centering
    \includegraphics[width=0.45\linewidth]{teaser.png}
  \end{figure}
\end{frame}
```

### Removing Progress Bar

To hide the progress bar on specific slides (e.g., title slide):

```latex
\begin{frame}[noframenumbering]
  \titlepage
\end{frame}
```

### Plain Frames

For slides without header/footer (e.g., thank you slide):

```latex
\begin{frame}[plain]
  Content here
\end{frame}
```

## Tips and Best Practices

1. **Organize with sections**: Use `\section{}` to structure your presentation and generate a table of contents

2. **Keep it simple**: Don't overcrowd slides - one main idea per slide

3. **Use vector graphics**: PDFs from tools like matplotlib, Inkscape, or LaTeX-generated figures scale better than raster images

4. **Consistent style**: Use the template's built-in styling (colors, boxes) for a cohesive look

5. **Test your compilation**: Run `pdflatex` → `biber` → `pdflatex` → `pdflatex` to ensure all references resolve

6. **Version control**: Use Git to track changes to your presentation

## Compilation

### Using `pdflatex` and `biber`

```bash
lualatex keynote.tex
biber keynote
lualatex keynote.tex
lualatex keynote.tex
```

### Using `latexmk` (recommended)

```bash
latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" keynote.tex
```

To continuously compile on file changes:

```bash
latexmk -pdf -pvc -pdflatex="lualatex -interaction=nonstopmode" keynote.tex
```

### Using VS Code with LaTeX Workshop

The template is configured to be built with `lualatex`. The main file `presentation/keynote.tex` includes a magic comment (`%!TEX program = lualatex`) that tells the LaTeX Workshop extension to use the correct compiler.

The recommended recipe is `lualatex -> biber -> lualatex*2`. Here's a complete `.vscode/settings.json` configuration for optimal LaTeX Workshop usage:

```json
{
  "latex-workshop.latex.tools": [
    {
      "name": "lualatex",
      "command": "D:/Latex/texlive/2024/bin/windows/lualatex.exe",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
      ]
    },
    {
      "name": "biber",
      "command": "D:/Latex/texlive/2024/bin/windows/biber.exe",
      "args": ["%DOCFILE%"]
    },
    {
      "name": "pdflatex",
      "command": "D:/Latex/texlive/2024/bin/windows/pdflatex.exe",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
      ]
    },
    {
      "name": "xelatex",
      "command": "D:/Latex/texlive/2024/bin/windows/xelatex.exe",
      "args": [
        "-synctex=1",
        "-interaction=nonstopmode",
        "-file-line-error",
        "%DOC%"
      ]
    },
    {
      "name": "bibtex",
      "command": "bibtex",
      "args": ["%DOCFILE%"]
    }
  ],
  "latex-workshop.latex.recipes": [
    {
      "name": "lualatex -> biber -> lualatex*2",
      "tools": ["lualatex", "biber", "lualatex", "lualatex"]
    }
  ],
  "latex-workshop.view.pdf.viewer": "tab",
  "latex-workshop.latex.clean.fileTypes": [
    "*.aux",
    "*.bbl",
    "*.blg",
    "*.idx",
    "*.ind",
    "*.lof",
    "*.lot",
    "*.out",
    "*.toc",
    "*.acn",
    "*.acr",
    "*.alg",
    "*.glg",
    "*.glo",
    "*.gls",
    "*.ist",
    "*.fls",
    "*.log",
    "*.fdb_latexmk",
    "*.snm",
    "*.synctex.gz",
    "*.nav"
  ],
  "latex-workshop.linting.chktex.exec.args": ["-q", "-n36"],
  "latex-workshop.linting.chktex.enabled": true,
  "latex-workshop.message.log.show": false,
  "latex-workshop.latex.autoBuild.run": "never",
  "latex-workshop.message.information.show": false,
  "latex-workshop.message.warning.show": false,
  "latex-workshop.message.error.show": true,
  "latex-workshop.message.badbox.show": "none",
  "[latex]": {
    "editor.wordWrap": "on"
  },
  "[html]": {
    "editor.wordWrap": "on"
  }
}
```

**Key configuration notes:**

- **Tool paths**: Update the command paths (e.g., `"D:/Latex/texlive/2024/bin/windows/lualatex.exe"`) to match your LaTeX installation
- **PDF viewer**: Set to `"tab"` to display PDFs in VS Code tabs
- **Auto-build**: Disabled by default (`"never"`) to prevent compilation on every keystroke
- **Message filtering**: Error messages are shown while info/warning messages are suppressed for cleaner output
- **Cleanup**: Automatically removes auxiliary files after compilation
- **Linting**: ChkTeX is enabled with customized arguments for better LaTeX checking
- **Word wrap**: Enabled for both LaTeX and HTML files

### Using Overleaf

1. Upload all files to a new Overleaf project
2. Make sure the main document is set to `keynote.tex`
3. The compiler should be set to `LuaLaTeX` with `biber` for bibliography
4. Overleaf will compile automatically

## Cleanup Script

A cross-platform cleanup script is provided to remove LaTeX auxiliary files after compilation:

### Usage

**On Linux/macOS:**
```bash
chmod +x clean_latex.sh
./clean_latex.sh
```

**On Windows (Git Bash/WSL):**
```bash
./clean_latex.sh
```

### What it cleans

The script removes all LaTeX auxiliary files including:
- `*.aux`, `*.log`, `*.out`, `*.toc`, `*.nav`, `*.snm`, `*.vrb`
- `*.bbl`, `*.blg`, `*.bcf`, `*.run.xml`, `*.fls`, `*.fdb_latexmk`
- `*.synctex.gz`, `*-blx.bib`
- `*.backup`, `*.bak`, `*.sav`, `*~`
- OS-specific files (`.DS_Store`, `Thumbs.db`, `desktop.ini`)
- Editor files (`*.swp`, `*.swo`)

### Recommended workflow

```bash
# Compile your presentation
latexmk -pdf -pdflatex="lualatex -interaction=nonstopmode" keynote.tex

# Clean up auxiliary files
./clean_latex.sh

# Check what's left
git status
```

## Examples

See `slides.tex` for comprehensive examples including:
- Basic text and lists
- Tables and figures
- Two-column layouts
- Colored boxes
- Citations and references
- Multi-page PDF handling
- Mathematical equations

## Troubleshooting

**References not appearing?**
- Make sure to run `biber` after `pdflatex`
- Check that `references.bib` exists and has valid entries
- Ensure you're using `\parencite{}` or `\cite{}` in your slides

**Images not showing?**
- Verify images are in the `assets/` folder
- Check file names and extensions (case-sensitive on Linux/macOS)
- Make sure `\graphicspath{{assets/}}` is set in `keynote.tex`

**Compilation errors?**
- Check for typos in LaTeX commands
- Ensure all `\begin{...}` have matching `\end{...}`
- Look for special characters that need escaping: `& % $ # _ { } ~ ^`

**Progress bar not showing?**
- The progress bar appears automatically on slides after the first one
- Use `[noframenumbering]` option to exclude specific slides from numbering

## Demo Assets

The template includes sample files in the `assets/` folder to help you get started:
- **sample-diagram.pdf**: Flow chart example created with TikZ
- **sample-plot.pdf**: Data visualization showing how to display plots
- **sample-photo.pdf**: Landscape illustration demonstrating image inclusion
- **sample-logo.pdf**: Institution/company logo placeholder
- **sample-multipage.pdf**: 4-page sample document for demonstrating page selection and cropping

These sample files are used in `slides.tex` to demonstrate various features. Replace them with your own content when creating your presentation.

The `demo/` folder contains additional production-ready examples (like `world_models.pdf`) that showcase advanced usage of the template.

