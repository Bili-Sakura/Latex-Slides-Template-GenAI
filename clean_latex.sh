#!/bin/sh

# LaTeX Cleanup Script
# Works on Linux, macOS, and Windows (with Git Bash, WSL, or similar)
# Cleans LaTeX auxiliary files based on .gitignore patterns

echo "🧹 Cleaning LaTeX auxiliary files..."

# Function to safely delete files
delete_files() {
    pattern="$1"
    description="$2"
    
    echo "  📁 $description:"
    
    # Count files before deletion
    count=$(find . -name "$pattern" -type f 2>/dev/null | wc -l)
    
    if [ "$count" -gt 0 ]; then
        # Delete files and show progress
        find . -name "$pattern" -type f -exec rm -f {} \; -print 2>/dev/null | while read -r file; do
            echo "    ✓ Deleted: $file"
        done
    else
        echo "    (no files found)"
    fi
}

# LaTeX auxiliary files (from .gitignore)
delete_files "*.aux" "Auxiliary files"
delete_files "*.log" "Log files"
delete_files "*.out" "Output files"
delete_files "*.toc" "Table of contents"
delete_files "*.nav" "Navigation files"
delete_files "*.snm" "Navigation map files"
delete_files "*.vrb" "Verbose files"
delete_files "*.bbl" "Bibliography files"
delete_files "*.blg" "Bibliography log files"
delete_files "*.bcf" "Biber control files"
delete_files "*.run.xml" "Biber run files"
delete_files "*.fls" "File list files"
delete_files "*.fdb_latexmk" "LaTeXmk database files"
delete_files "*.synctex.gz" "SyncTeX files"
delete_files "*.synctex.gz(busy)" "Busy SyncTeX files"

# Biber cache files
delete_files "*-blx.bib" "Biber cache files"

# LaTeX temporary files
delete_files "*.backup" "Backup files"
delete_files "*.bak" "Backup files"
delete_files "*.sav" "Save files"
delete_files "*~" "Temporary files"

# OS-specific files
delete_files ".DS_Store" "macOS files"
delete_files "Thumbs.db" "Windows thumbnail files"
delete_files "desktop.ini" "Windows desktop files"

# Editor-specific files
delete_files "*.swp" "Vim swap files"
delete_files "*.swo" "Vim swap files"

# Clean empty directories (optional)
echo "  📁 Cleaning empty directories..."
find . -type d -empty -delete 2>/dev/null

echo ""
echo "🎉 Cleanup complete!"

echo ""
echo "💡 Tip: Run this script after compiling LaTeX documents to clean up auxiliary files."
echo "💡 Tip: Use 'git status' to see what files are no longer tracked."
