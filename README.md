# Curriculum Vitae

Written in [Typst](https://typst.app). `cv.typ` is the source and `cv.pdf` is the built CV.

## Usage

### Set up

```
brew install typst
```

For live preview in your editor, install the [Tinymist](https://github.com/Myriad-Dreamin/tinymist) extension (VS Code) or language server (Neovim).

### Compile

```
typst compile --font-path fonts --ignore-system-fonts cv.typ cv.pdf
```

Use `typst watch` with the same arguments to rebuild on every save.

The Lato font files are checked in under `fonts/` (SIL Open Font License, see `fonts/OFL.txt`), so the PDF comes out the same locally and in CI.

### ATS

The layout is a single column with plain-text contact details and standard section headings, so applicant tracking systems can parse it. To check what a parser sees:

```
brew install poppler
pdftotext -layout cv.pdf -
```

## CI

GitHub Actions compiles `cv.typ` on pushes to `main` and on pull requests, and uploads the PDF as a build artifact.

## License and Credits

Originally based on the LaTeX template by [dphang](https://github.com/dphang/resume).
