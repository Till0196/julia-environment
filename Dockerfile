ARG REGISTRY=ghcr.io
ARG OWNER=Till0196
FROM quay.io/jupyter/julia-notebook:latest

LABEL maintainer="Till0196"

RUN julia -e ' \
        using Pkg; \
        Pkg.update(); \
        Pkg.add([ \
            "Plots", \
            "PyPlot", \
            "Polynomials" \
        ]); \
        Pkg.precompile(); \
    '

RUN conda install jupyterlab-language-pack-ja-JP
