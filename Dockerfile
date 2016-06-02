FROM microsoft/dotnet:latest

COPY . /webapp
WORKDIR /webapp

RUN ["dotnet", "restore"]

EXPOSE 5000/tcp
CMD ["dotnet", "run"]
