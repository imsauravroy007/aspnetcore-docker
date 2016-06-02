FROM microsoft/dotnet:latest

COPY . /webapp
WORKDIR /webapp

CMD dotnet restore

EXPOSE 5000/tcp
ENTRYPOINT dotnet run
