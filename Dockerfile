FROM microsoft/dotnet:latest

COPY . /webapp
WORKDIR /webapp

RUN ["dotnet", "restore"]
RUN ["dotnet", "build"]

EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run"]
