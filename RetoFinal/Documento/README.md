# Informe de Ciberseguridad - Estructura LaTeX

Este proyecto contiene una plantilla profesional en LaTeX para elaborar informes de ciberseguridad.

## Estructura del Proyecto

```
RetoFinal/
├── informe.tex          # Documento principal de LaTeX
├── imagenes/            # Carpeta para imágenes y diagramas
├── secciones/           # Secciones modulares del informe
└── README.md            # Este archivo
```

## Características

- **Formato profesional**: Diseño adaptado para informes de ciberseguridad
- **Estructura completa**: Incluye todas las secciones típicas de un informe de seguridad
- **Colores personalizados**: Esquema de colores apropiado para documentos de seguridad
- **Soporte para código**: Listados de código con sintaxis resaltada
- **Referencias e hipervínculos**: Enlaces internos y externos configurados
- **Tablas y gráficos**: Formateo para presentación de datos de vulnerabilidades

## Secciones Incluidas

1. **Resumen Ejecutivo**: Vista general de alto nivel
2. **Introducción**: Objetivo, alcance y metodología
3. **Análisis de Vulnerabilidades**: Clasificación por severidad
4. **Evaluación de Riesgos**: Matriz de riesgos y análisis de impacto
5. **Pruebas de Penetración**: Metodología y resultados
6. **Configuración de Seguridad**: Análisis de configuraciones
7. **Cumplimiento Normativo**: RGPD, ISO 27001, ENS
8. **Recomendaciones**: Acciones priorizadas por urgencia
9. **Conclusiones**: Resumen final
10. **Apéndices**: Herramientas, glosario y referencias

## Compilación

### Requisitos
- LaTeX (TeX Live, MiKTeX, o MacTeX)
- Paquetes: babel-spanish, hyperref, listings, geometry, fancyhdr, etc.

### Compilar el documento

```bash
# Compilación simple
pdflatex informe.tex

# Compilación completa (con índice y referencias)
pdflatex informe.tex
pdflatex informe.tex
```

O usa un editor LaTeX como:
- **Overleaf** (online)
- **TeXShop** (macOS)
- **TeXstudio** (multiplataforma)
- **VS Code** con extensión LaTeX Workshop

## Personalización

### Cambiar colores
Modifica las definiciones en la sección de configuración:
```latex
\definecolor{securityred}{RGB}{178,34,34}
\definecolor{securityblue}{RGB}{25,25,112}
```

### Añadir imágenes
Coloca tus imágenes en la carpeta `imagenes/` y úsalas así:
```latex
\includegraphics[width=0.8\textwidth]{imagenes/diagrama.png}
```

### Información del autor
Actualiza los campos en la portada:
```latex
{\large Nombre del Autor\par}
{\normalsize \texttt{email@ejemplo.com}\par}
```

## Uso Recomendado

1. Personaliza la portada con tu información
2. Completa cada sección con tus hallazgos específicos
3. Añade capturas de pantalla y diagramas en la carpeta `imagenes/`
4. Adapta las tablas de vulnerabilidades con tus datos
5. Revisa y ajusta las recomendaciones según tu contexto

## Licencia

Plantilla de uso libre para fines educativos y profesionales.
