#!/bin/sh

wget -O /data/basis_set.txt "https://www.basissetexchange.org/api/basis/$1/format/$2?elements=$3"

