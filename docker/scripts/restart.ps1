param(
  [string]$Service = ""
)

Set-Location $PSScriptRoot\..

if ($Service -ne "") {
  docker compose restart $Service
} else {
  docker compose restart
}