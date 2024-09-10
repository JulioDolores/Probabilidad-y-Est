FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get update && apt-get install -y \
    git \
    wget \
    curl \
    vim \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER jovyan

EXPOSE 8890

CMD ["start-notebook.sh"]
