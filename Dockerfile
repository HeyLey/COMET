
FROM everware/base

RUN wget -q https://cernbox.cern.ch/index.php/s/OuxEIMWpvA4ZlS7/download -O data.tgz; tar -xzof data.tgz

USER root

RUN /bin/bash -c "source activate py27 && conda install -q --yes numpy scipy scikit-learn matplotlib pandas"

USER jupyter

COPY get_html.sh /home/jupyter

RUN mkdir /home/jupyter/shared