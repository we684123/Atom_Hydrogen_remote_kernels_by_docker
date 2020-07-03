FROM jupyter/minimal-notebook as builder
MAINTAINER we684123
# for Atom_Hydrogen_remote_kernels_by_docker

COPY . .
RUN python -m pip install --upgrade pip \
    && npm install -g npm \
    && npm install -g tslab \
    && tslab install [--python=python3] \
    && tslab install

ENV JUPYTER_TOKEN=my_secret_token

FROM builder

EXPOSE 8888
#ENTRYPOINT ["/tini", "--"]
CMD ["jupyter-notebook", "--no-browser", "--port=8888"]
