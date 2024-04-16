# julia-environment

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/till0196/julia-environment)

Juliaがインストール済みのJupyter Notebookが立ち上がるDocker環境です。

[Container registry](https://github.com/till0196/julia-environment/pkgs/container/prog1-environment)にて、linux/amd64とlinux/arm64のビルド済みDockerイメージを公開しています。

## 使い方

Dockerと[Docker compose](https://docs.docker.jp/v1.12/compose/install.html)が必要です。

```bash
# 初期設定
git clone https://github.com/till0196/julia-environment.git
cd julia-environment

# JupyterLab Notebookを起動
docker compose up
# ブラウザで http://localhost:8888 に接続するとJupyter Notebookが起動します

# シェルに接続
docker compose exec julia-jupyter /bin/bash

# JupyterLab Notebookを終了
docker compose down
```

`./work`フォルダにノートブックファイルを保存するとJupyterLab Notebookから確認できます。