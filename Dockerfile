FROM microsoft/dotnet:1.0.0-rc2-core

COPY . /webapp
WORKDIR /webapp
RUN ["dotnet", "restore"]

EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run"]
