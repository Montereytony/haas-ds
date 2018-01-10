# to do a test build by hand (instead of the automated hub.docker.com build) you
# can do this:
#
#    docker build --rm --tag ds-test .

FROM jupyter/datascience-notebook

RUN conda install \
 	r-mclust \
 	r-gridExtra \
 	r-e1071 \
 	r-GGally \
 	r-rgl \
 	r-xlsxjars \
 	r-xlsx \
 	r-rJava \
 	r-pracma \
 	ipython \
 	numpy \
 	pandas \
 	plotnine \
 	matplotlib \
 	seaborn

RUN conda install -c https://conda.anaconda.org/amueller wordcloud
RUN conda install -c statsmodels statsmodels
RUN conda install -c bioconda r-ggdendro 


RUN pip install scikit-neuralnetwork

RUN ln -s /bin/tar /bin/gtar && Rscript -e "devtools::install_github(c('lchiffon/wordcloud2'))"

