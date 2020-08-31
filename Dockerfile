FROM colomoto/colomoto-docker:2020-08-01

USER root

RUN pip install cobra corda escher
RUN mkdir -p /notebook/ECCB2020-T05/
COPY /notebooks/ /notebook/ECCB2020-T05/

RUN chown -R user:user /notebook/

USER user
