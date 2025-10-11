# Assets Folder

This folder stores images, figures, and other media files for your presentation.

## Sample Files Included

The template comes with example files to demonstrate various features:
- **sample-diagram.pdf**: Flow chart created with TikZ
- **sample-plot.pdf**: Data visualization with pgfplots
- **sample-photo.pdf**: Landscape illustration
- **sample-logo.pdf**: Institution/company logo placeholder
- **sample-multipage.pdf**: 4-page sample PDF for demonstrating page selection and cropping

Replace these with your own content when creating your presentation.

## Usage

Place your image files (PNG, JPG, PDF, etc.) in this directory. They can be referenced in your LaTeX presentation using:

```latex
\includegraphics[width=0.6\linewidth]{filename.png}
```

## Supported Formats

- **PNG**: Raster images
- **JPG/JPEG**: Photographs and raster images
- **PDF**: Vector graphics (recommended for diagrams, plots)
- **EPS**: Vector graphics (legacy format)

## Tips

1. **Use vector formats when possible**: PDFs created from vector sources (e.g., matplotlib plots, Inkscape drawings) scale better than raster images.

2. **Multi-page PDFs**: You can include specific pages from multi-page PDFs:
   ```latex
   \includegraphics[page=3]{multipage-document.pdf}
   ```

3. **Cropping PDFs**: Use `adjustbox` to crop or trim PDFs:
   ```latex
   \adjustbox{width=0.8\linewidth, trim=0 {0.2\height} 0 {0.3\height}, clip}{
     \includegraphics{figure.pdf}
   }
   ```
   The trim syntax is: `left bottom right top`

4. **Organization**: For large presentations, consider creating subfolders:
   - `assets/intro/`
   - `assets/results/`
   - `assets/diagrams/`

## Examples in slides.tex

The provided `slides.tex` demonstrates how to use these sample files:
- Single image inclusion
- Side-by-side figures
- Multi-page PDF with specific page selection
- Cropping and adjusting PDF regions with adjustbox

Study these examples and adapt them for your own content.

