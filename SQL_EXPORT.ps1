# MySQL database details
$mysqlHost = "localhost"
$mysqlUser = "ptm"
$mysqlPassword = "ptm00"
$databaseName = "POS"

# Output file for the SQL dump
$outputFile = "backup.sql"

# Construct the mysqldump command for a full export
$mysqldumpCommand = "C:\xampp\mysql\bin\mysqldump.exe --host=$mysqlHost --user=$mysqlUser --password=$mysqlPassword --databases $databaseName --result-file=$outputFile --routines --triggers --events"

# Execute the mysqldump command
Invoke-Expression -Command $mysqldumpCommand

Write-Host "Database export complete. File saved to: $outputFile"