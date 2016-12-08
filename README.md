# Docker2Gitbook

## Intro
You can quickly set up the Gitbook Serve online.

## How to use
1. You should have installed the `docker`.
2. Clone the project from the Github.
3. Run `mkdir docs` to make up a folder named `docs`.
4. Put your documents to the docs(e.g: README.md,SUMMARY.md)
5. Run `docker build . -t 'docker2gitbook'`, And wait for the process done.
6. Run `docker run -d -p 4000:4000 docker2gitbook`, And you can find the Gitbook Server is online.

## Project Flow 
1. Put the `Document Data` to the folder.
2. Build the docker images with `Dockerfile` from the Github.
3. Run the Gitbook Server 

![](help/flow.png)

---

# 中文说明
