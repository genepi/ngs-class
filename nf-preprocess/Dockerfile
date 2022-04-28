FROM ubuntu:18.04
COPY environment.yml .

#  Install miniconda
RUN  apt-get update && apt-get install -y wget
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
  /bin/bash ~/miniconda.sh -b -p /opt/conda
ENV PATH=/opt/conda/bin:${PATH}

RUN conda update -y conda
RUN conda env update -n root -f environment.yml \
&& conda clean -a
