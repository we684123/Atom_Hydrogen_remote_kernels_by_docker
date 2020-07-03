FROM jupyter/minimal-notebook as builder
MAINTAINER we684123
# for Atom_Hydrogen_remote_kernels_by_docker

COPY . .
RUN python -m pip install --upgrade pip 
# RUN npm install -g npm 
RUN npm install -g tslab 
# RUN tslab install [--python=python3] 
RUN tslab install

# ENV JUPYTER_TOKEN=my_secret_token

FROM builder

EXPOSE 8888
#ENTRYPOINT ["/tini", "--"]
CMD ["jupyter-notebook", "--no-browser", "--port=8888"]
