## How to build

The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/comparison-geometry.git`

### MetaPost

Go into subfolder `comparison-geometry/mppics/`, run `mpost pic` come back to `comparison-geometry/`:

`cd comparison-geometry/mppics/`<br/>
`mpost pic`<br/>
`cd ..`<br/>

### LaTeX

Run `pdflatex` and `biber`:

`pdflatex comparison-geometry.tex`<br/>
`biber comparison-geometry`<br/>
`pdflatex comparison-geometry.tex`<br/>
