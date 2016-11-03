pandoc -f markdown -t latex -s --listings -H ~/.pandoc/listings-setup.tex "${1}.md" -o "${1}.pdf"
