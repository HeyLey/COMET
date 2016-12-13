
FROM continuumio/miniconda

RUN cd root; wget https://cernbox.cern.ch/index.php/s/OuxEIMWpvA4ZlS7/download -O data.tgz; tar xzf data.tgz

COPY environment.yml /root/

RUN conda env create -f /root/environment.yml

COPY COMET.ipynb /root/
COPY get_html.sh /root/