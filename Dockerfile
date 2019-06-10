FROM mcr.microsoft.com/dotnet/core/runtime:2.2

RUN apt-get update && apt-get install -y \
  libleveldb-dev \
  sqlite3 \
  libsqlite3-dev \
  libunwind8-dev

# APT cleanup to reduce image size
RUN rm -rf /var/lib/apt/lists/*

COPY ./neo-cli/ app/

WORKDIR /app

EXPOSE 10002
EXPOSE 10003

CMD ["dotnet", "neo-cli.dll"]