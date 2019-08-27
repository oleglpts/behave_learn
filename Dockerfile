FROM python:3.5
WORKDIR /opt/behave_learn/
COPY core ./core
COPY features ./features
COPY scripts/venv_requirements.txt ./venv_requirements.txt
COPY steps ./steps
COPY behave_example.ini ./
RUN apt-get update
RUN apt-get install -y mc
RUN pip install -r venv_requirements.txt
ENTRYPOINT ["/bin/bash"]
