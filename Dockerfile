FROM brebete/dotnet-mono:latest

LABEL maintainer="tsgkadot<tsgkadot@gmail.com>" \
      updater="Heberte F Moraes<brebete@gmail.com>" \
      description="For DocFX building(with mono.)"

ENV DOCFX_VER 2.56.7

RUN apt-get update \
 && apt-get install unzip wget git -y \
 && rm -rf /var/lib/apt/lists/* \
 && wget -q -P /tmp https://github.com/dotnet/docfx/releases/download/v${DOCFX_VER}/docfx.zip \
 && mkdir -p /opt/docfx \
 && unzip /tmp/docfx.zip -d /opt/docfx \
 && echo '#!/bin/bash\nmono /opt/docfx/docfx.exe $@' > /usr/bin/docfx \
 && chmod +x /usr/bin/docfx \
 && rm -f /tmp/*

# Configure the tools
RUN mkdir -p /source

WORKDIR /source

ENTRYPOINT ["docfx"]

CMD ["docfx", "-h"]

