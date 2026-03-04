param(
  [string]$Service = ""
)

Set-Location $PSScriptRoot\..

if ($Service -ne "") {
  docker compose logs -f $Service
} else {
  docker compose logs -f
}