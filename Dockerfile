FROM jupyter/datascience-notebook

RUN conda install \
 	r-mclust \
 	r-gridExtra \
 	r-e1071 \
 	r-GGally \
 	r-grDevices \
 	r-rgl \
 	r-Java \
 	r-xlsxjars \
 	r-xlsx \
 	r-rJava \
 	r-pracma \
 	r-XLConnect \
 	XLConnect \
 	ipython \
 	IPython.display \
 	numpy \
 	pandas \
 	plotnine \
 	matplotlib \
 	seaborn \
 	statsmodels.formula.api

RUN conda install -c toli nolearn
RUN conda install -c statsmodels statsmodels
RUN conda install -c bioconda r-ggdendro 
RUN conda install -c bioconda r-neuralnet

RUN pip install scikit-neuralnetwork
