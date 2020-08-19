FROM colomoto/colomoto-docker:2020-07-01

USER root

RUN conda install -c colomoto pyMaBoSS=0.7.17 --force-reinstall
RUN mkdir -p /notebook/ECCB2020-T05/
COPY /notebooks/ /notebook/ECCB2020-T05/

RUN chown -R user:user /notebook/

USER user
