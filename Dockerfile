FROM microsoft/dotnet:1.0.0-rc2-core

COPY . /webapp
WORKDIR /webapp

CMD dotnet restore

EXPOSE 5000/tcp
ENTRYPOINT bash
