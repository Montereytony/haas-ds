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

RUN conda install -c toli nolearn
RUN conda install -c statsmodels statsmodels
RUN conda install -c bioconda r-ggdendro 
RUN conda install -c bioconda r-neuralnet

RUN pip install scikit-neuralnetwork
