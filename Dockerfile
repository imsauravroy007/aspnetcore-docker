FROM microsoft/dotnet:1.0.0-rc2-core

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates \
        curl \
    && rm -rf /var/lib/apt/lists/*

# Install .NET Core
RUN sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet/ trusty main" > /etc/apt/sources.list.d/dotnetdev.list' 
    && sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
    && sudo apt-get update
    && sudo apt-get install dotnet-dev-1.0.0-preview1-002702

#copy web-app to container    
COPY . /webapp
WORKDIR /webapp
RUN ["dotnet", "restore"]

EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run"]
