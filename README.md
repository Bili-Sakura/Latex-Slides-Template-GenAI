# Keynote LaTeX Presentation Template

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![LaTeX](https://img.shields.io/badge/LaTeX-beamer-green.svg)

A modern, clean LaTeX Beamer presentation template with a sleek design inspired by keynote presentations.

## Quick Start

1. **Navigate to the `presentation` directory**:
   ```bash
   cd presentation
   ```
2. **Edit `keynote.tex`** - Update your title, author, and institution.
3. **Edit `slides.tex`** - Add your slide content.
4. **Edit `references.bib`** - Add your bibliography entries.
5. **Compile**:
   ```bash
   lualatex keynote.tex
   biber keynote
   lualatex keynote.tex
   lualatex keynote.tex
   ```
   For VS Code users with the LaTeX Workshop extension, the project is pre-configured to use the correct compiler.

## Portal Version
A portal version is available in the `portal` directory. This version is designed for a 9:16 aspect ratio, but please be aware that the slide size may still need some adjustments for optimal viewing.

## Features

- ✨ Modern design with progress bar and slide numbers
- 📚 Advanced citation management with per-slide references
- 🖼️ Multi-page PDF support with cropping
- 🎨 Rich content support (colored boxes, tables, math)

## Documentation

For detailed usage instructions, examples, and customization options, see the [comprehensive guide](docs/GUIDE.md).

## Examples

Check out `presentation/slides.tex` for examples and `demo/world_models.pdf` for a production-ready presentation.

## Citation

If you use this template in your work, please cite:

```bibtex
@misc{sakura2025keynote,
  author = {Sakura},
  title = {Keynote LaTeX Presentation Template},
  year = {2025},
  url = {https://github.com/Bili-Sakura/Latex-Slides-Template-GenAI}
}
```

## License

This template is released under the MIT License. See [LICENSE](LICENSE) for details.

Copyright (c) 2025 Sakura

---

**Happy presenting!** 🎤
