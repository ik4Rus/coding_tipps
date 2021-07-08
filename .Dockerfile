# start from base image
FROM jupyter/scipy-notebook


# Install additional packages
COPY ./setup.py ./requirements.txt ./

RUN pip3 install     --no-cache-dir -r ./requirements.txt

EXPOSE 8080

CMD ["/bin/bash"]