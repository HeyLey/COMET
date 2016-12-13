#!/bin/bash

cp /notebook/COMET.ipynb /root
cd /root

source activate comet

jupyter nbconvert --to=html --ExecutePreprocessor.timeout=900 --execute COMET.ipynb

mv /root/COMET.html /notebook
