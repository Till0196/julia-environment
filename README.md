# julia-environment

[![build-julia-notebook-jp](https://github.com/Till0196/julia-environment/actions/workflows/build-dockerfile.yaml/badge.svg)](https://github.com/Till0196/julia-environment/actions/workflows/build-dockerfile.yaml)
[![image size](https://ghcr-badge.egpl.dev/till0196/julia-environment/size?color=%2344cc11&tag=latest&label=image+size)](https://github.com/Till0196/julia-environment/pkgs/container/julia-environment)

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/till0196/julia-environment)

Juliaがインストール済みのJupyter Notebookが立ち上がるDocker環境です。

[Container registry](https://github.com/Till0196/julia-environment/pkgs/container/julia-environment)にて、linux/amd64とlinux/arm64のビルド済みDockerイメージを公開しています。

GitHub Actionsにて、毎日日本時間の24:00に自動でイメージを生成しています。  
実行時間を削減するため、上流イメージに変更がある場合のみ更新が行われます。

イメージ内に下記Juliaパッケージが組み込まれています。
 - `Plots`
 - `PyPlot`
 - `Polynomials`

Juliaパッケージの追加や更新は、永続化ボリューム内に保存されます。

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