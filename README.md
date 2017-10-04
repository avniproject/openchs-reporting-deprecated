# openchs-reporting
Reporting and dashboard based on metabase

## Prerequisites

 - Java (jre 7+)
 - wget
 - openchs database on localhost:3306. If not available, you can set one up from [openchs-server](https://github.com/openchs/openchs-server)

## Usage
First time, you will need the metabase server:

```
make download_metabase
```

For all subsequent runs, just start the server:

```
make start_metabase
```

Reports will be available at http://localhost:3000. Use admin@openchs.org/passw0rd to login.


__Dev notes__
