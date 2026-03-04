Set-Location $PSScriptRoot\..
docker compose down -v
docker compose up -d --build