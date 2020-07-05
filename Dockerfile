FROM python:3.8 as builder
MAINTAINER we684123
# for Atom_Hydrogen_remote_kernels_by_docker


RUN python -m pip install --upgrade pip 
RUN pip install notebook 
RUN apt-get update
RUN apt install npm -y
RUN npm install -g tslab 


FROM builder

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip" ,"0.0.0.0", "--no-browser", "--allow-root","--port=8888"]