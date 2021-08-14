# Curriculum Vitae

## Usage

### Dockerised LaTeX Environment

#### Set up

- Install Docker
- Install Vscode LaTeX workshop extension 



#### Build the Dockerfile

`docker build . --file Dockerfile --tag fungiwnl/tex:$(date +%s)`

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



### Overleaf

If docker is too much work then you can just use Overleaf to live edit and compile the cv .tex file. 

1. Create a new project in Overleaf.
2. Copy cv.tex into your project.
3. Edit cv.tex with your information.
4. Click Recompile and download your generated PDF.

## To-do 

- The provided dockerfile uses the full `texfull-live` behemoth, so the docker image is 4GBs. Ideally, we have a minimal dependency docker image compiling the tex.
- GitHub Actions caching. The docker image is building from scratch everytime, so it takes a good 10 minutes long.

## License and Credits

The resume template is **very** closely based on a template from [dphang](https://github.com/dphang/resume), who also adapted from another template.
