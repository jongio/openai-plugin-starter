# Build your container, e.g.: for Python you can use the following Dockerfile

FROM python:3.10

WORKDIR /code

# # Install jq using apt-get
RUN apt-get update && \
    apt-get install -y jq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
    
# COPY requirements.txt /code/requirements.txt

# RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# COPY . /code/

COPY entrypoint.sh /entrypoint.sh
COPY pluginconfig.sh /pluginconfig.sh

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
