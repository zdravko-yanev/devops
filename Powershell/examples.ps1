# Create folder for backups with current date

echo "*** Create current date folder "
$dateTime = Get-Date -Format "dd-MM-yyyy"
New-Item -Path ".\grafana\$dateTime" -ItemType Directory -Force | Out-Null
echo "*** Copy Grafana files to git repo "
Copy-Item -Path $env:grafana_db  -Destination ".\grafana\$dateTime\" -Force