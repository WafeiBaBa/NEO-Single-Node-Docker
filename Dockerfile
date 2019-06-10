FROM mcr.microsoft.com/dotnet/core/runtime:2.2

RUN apt-get update && apt-get install -y \
  libleveldb-dev \
  sqlite3 \
  libsqlite3-dev \
  libunwind8-dev

COPY ./neo-cli/ app/

EXPOSE 10003

CMD ["dotnet", "app/neo-cli.dll"]