ARG REGISTRY=ghcr.io
ARG OWNER=Till0196
FROM quay.io/jupyter/julia-notebook:latest

LABEL maintainer="Till0196"

RUN conda install jupyterlab-language-pack-ja-JP
