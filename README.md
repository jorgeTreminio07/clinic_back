# add migrations (run on layer infrastructure)

dotnet ef migrations add InitialCreate --output-dir ./Persistence/migrations --startup-project ../Api/Api.csproj

# update database(run on shell app)

dotnet ef database update --project ./Infrastructure/Infrastructure.csproj --startup-project ./Api/Api.csproj

<!-- publish app -->

# generate publish release app

dotnet publish -c Release

# run Api

dotnet run --project Api

# Remenber

add pg_dump from file archivoslocales/postgre/bin to path in variables de entorno to generate backups
