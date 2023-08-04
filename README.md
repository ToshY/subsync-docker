<h1 align="center"> 📚 Subsync  Docker </h1>

<div align="center">
    <a href="https://hub.docker.com/r/t0shy/subsync-docker"><img src="https://img.shields.io/badge/Docker%20Hub-t0shy%2Fsubsync--docker-blue" alt="t0shy/subsync-docker" /></a>
    <br /><br />
    A docker image for <a href="https://github.com/xuminic/subsync">xuminic/subsync</a>.
</div>

## 🧰 Requirements

* [Docker](https://docs.doctker.com/get-docker/)

## 🐋 Usage

1. Pull the image `t0shy/subsync-docker:latest`.

```shell
docker pull t0shy/subsync-docker:latest
```

2. Run it.

```shell
docker run --rm -v "$(pwd):/files" t0shy/subsync-docker:latest -1.00004170838 /files/input.ass >> ./output.ass
```

> Note: The example above scales with `1.00004170838`, which is obtained through the original source framerate `23.977` divided by the desired
> framerate `23.976`.

3. Done

The shifted output is redirected to a new file, `./output.ass`.

## ❕ License

This repository comes with the [MIT license](https://choosealicense.com/licenses/mit/).

