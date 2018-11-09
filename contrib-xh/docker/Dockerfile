FROM xh-superset-base

MAINTAINER Kazeki <kazeki@foxmail.com>

USER root

# Configure environment
ENV LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    HOME=/home/work
    
ENV PATH=/home/work/incubator-superset/superset/bin:$PATH \
    PYTHONPATH=./superset/:$PYTHONPATH
    
WORKDIR $HOME/incubator-superset

COPY ./superset ./superset

RUN pip install -e .

RUN cd superset/assets && yarn
RUN cd superset/assets && npm run build

HEALTHCHECK CMD ["curl", "-f", "http://localhost:8088/health"]

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 8088
