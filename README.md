# Parcel Javascript Starter

This repo contains starter project for javascript application. It has tooling included and setup with `pre-commit` hook so it will run every time we commit to the branch. It also has a `container` approach in mind, so inside we can find a `Dockerfile` for the production build and `development.Dockerfile` for development.

## Scaffold

To start a new project i suggest to use `degit` to download this repo, essentially it will clone the repo and remove the `.git` directory inside. Get started with `npx degit ishakantony/parcel-javascript-starter`.

## Initial Setup

### Not using `docker`

`yarn install`

## Start Development

### Not using `docker`

`yarn dev`

### Using `docker`

`docker-compose up`

## Build for Production

### Not using `docker`

`yarn build` and we can find the build files inside `dist` directory, we can easily move the files to the webserver and set it up

### Using `docker`

`docker image build -t <image-name>:<tag> .`, if you are planning to push your image to docker hub, don't forget to name your image with your docker id as prefix like `ishakantony/parcel-javascript-starter:latest`.

---

### Note on using Docker without Installing Dependencies on the Host

1. We won't be able to trigger the `pre-commit` hook provided by husky during our git commit
2. We won't be able to run our linter and prettier on the host, you can try to run it inside the container if you want with `docker exec`

### Note on multiple page

1. If you want to develop a multiple page but still referencing the same `js` entrypoint, you need to use a workaround by creating separate entrypoint for the html, so that `parcel` will generate separate `js` for it. This issue was from 2 years ago i think and i haven't checked whether this has been resolved.
