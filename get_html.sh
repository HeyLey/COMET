#!/bin/bash

cp /home/jupyter/shared/COMET.ipynb /home/jupyter/

source activate py27

ipython nbconvert --to=html --ExecutePreprocessor.timeout=900 --execute COMET.ipynb

mv COMET.html /home/jupyter/shared/
