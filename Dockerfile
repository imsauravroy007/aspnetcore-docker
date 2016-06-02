FROM microsoft/dotnet:latest

COPY . /webapp
WORKDIR /webapp

RUN ["dotnet", "restore"]

RUN ["echo", "Restore is done!"]

EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run"]
