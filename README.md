# Résumé

Personal resume based on [brutal resume](https://github.com/palindrom615/brutal-resume) LaTeX template.

## Getting started 🚀

First you need to [get LaTeX](https://www.latex-project.org/get/) to build the pdf out of the .tex file on your machine. Then you can run the `pdflatex` command to make the pdf file:

```sh
pdflatex resume.tex
```

You can also adjust the source file and push it to `main` branch, CI will build the pdf on every push.

## Spellcheck 🗒️

You'll need [aspell](http://aspell.net/) for this script.

```sh
chmod +x scripts/spellcheck.sh
scrips/spellcheck.sh # interactive mode (e.g.: for fixing typos)
scripts/spellcheck.sh list # list mode (scanning file and listing typos)
```
