# Curriculum Vitae

## Usage

### Dockerised LaTeX Environment

#### Set up

- Install Docker
- Install Vscode LaTeX workshop extension 



#### Build the Dockerfile

`docker build . --file Dockerfile --tag fungiwnl/tex`

#### Vscode live editor

- Add the following to your Vscode config 

```
{
    "latex-workshop.docker.enabled": true,
    "latex-workshop.latex.outDir": "./out",
    "latex-workshop.synctex.afterBuild.enabled": true,
    "latex-workshop.view.pdf.viewer": "tab",
    "latex-workshop.docker.image.latex": "fungiwnl/tex",
  }
```

And then you can build a LaTeX file by clicking on the build icon.

#### Compile .tex to .pdf

```
docker run \      
--volume $(pwd):/tmp \
fungiwnl/tex \
pdflatex cv.tex
```


### Using Overleaf

1. Create a new project in Overleaf.
2. Copy cv.tex into your project.
3. Edit cv.tex with your information.
4. Click Recompile and download your generated PDF.

## To-do 

- The provided dockerfile uses the full `texfull-live` behemoth, so the docker image is 4GBs. Ideally, we have a minimal dependency docker image compiling the tex.
- GitHub Container Registry caching. The docker image is building from scratch everytime, so it takes a good 10 minutes long.

## License and Credits

Credit to [dphang](https://github.com/dphang/resume) for the template
