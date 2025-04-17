ARG REGISTRY=ghcr.io
ARG OWNER=Till0196
FROM quay.io/jupyter/julia-notebook:latest

LABEL maintainer="Till0196"

USER root

ARG JULIA_DEPOT_PATH=/opt/julia-cache:${JULIA_DEPOT_PATH}

RUN --mount=type=cache,target=/opt/julia-cache,sharing=locked \
    chown -R ${NB_UID}:${NB_GID} /opt/julia-cache && \
    su -p ${NB_USER} -c "julia -e ' \
        using Pkg; \
        Pkg.update(); \
        Pkg.add([ \
            \"Plots\", \
            \"PyPlot\", \
            \"Polynomials\" \
        ]); \
        Pkg.precompile(); \
    '" && \
    cp -p -r /opt/julia-cache/* /opt/julia/

ARG CONDA_DIR=/opt/conda

RUN --mount=type=cache,target=/opt/conda/pkgs,sharing=locked \
    chown -R ${NB_UID}:${NB_GID} /opt/conda/pkgs && \
    su -p ${NB_USER} -c " \
        /opt/conda/bin/conda install \
            jupyterlab-language-pack-ja-JP \
    "

USER ${NB_UID}