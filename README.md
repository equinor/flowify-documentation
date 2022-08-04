# Flowify documentation

This is the documentation repository for Floiwfy workflows manager

Frontend source code https://github.com/equinor/flowify-workflows-UI

Backend source code https://github.com/equinor/flowify-workflows-server

We use [Docsy](https://github.com/google/docsy) a Hugo theme for our documentation site.

The theme is included in this project as a Git submodule. Therefore to clone the repositort:

```bash
git clone --recurse-submodules git@github.com:equinor/flowify-documentation.git
```

## Local testing

Install [Hugo](https://gohugo.io/) and NPM.
```bash
cd flowify-documentation
npm install hugo-extended --save-dev
sudo npm install -D autoprefixer
sudo npm install -D postcss-cli
sudo npm install -D postcss
git submodule update --init --recursive
```

Once installed

```bash
cd site
hugo server
```
  
  
## Deployment

Flowify docs is currently hosted at [https://equinor.github.io/flowify-documentation/](https://equinor.github.io/flowify-documentation/). New push to this repo will trigger a build and re-deploy
