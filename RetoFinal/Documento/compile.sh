#!/bin/bash

# Script para compilar el documento LaTeX
# Uso: ./compile.sh

echo "Compilando informe de ciberseguridad..."

# Primera compilación
pdflatex -interaction=nonstopmode informe.tex

# Segunda compilación para actualizar índice y referencias
pdflatex -interaction=nonstopmode informe.tex

# Limpiar archivos auxiliares
rm -f *.aux *.log *.out *.toc *.lof *.lot

echo "¡Compilación completada! El archivo PDF está listo: informe.pdf"
