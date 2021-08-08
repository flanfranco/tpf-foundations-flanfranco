FROM jupyter/scipy-notebook
ENV JUPYTER_TOKEN=itba_jupyter_notebook_token
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
VOLUME /notebooks
WORKDIR /notebooks
