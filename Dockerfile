ARG BASEIMAGEVER="1.8-jammy"
FROM gramineproject/gramine:${BASEIMAGEVER}

ARG GSCVER="1.8"
RUN apt-get update && apt-get install -y docker.io python3 python3-pip nano git
RUN pip3 install docker jinja2 tomli tomli-w pyyaml

WORKDIR /workspace

RUN git clone https://github.com/gramineproject/gsc.git -b v${GSCVER} --depth 1

WORKDIR /workspace/gsc
