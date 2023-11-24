-- MySQL import script

-- MySQL database details
SET @mysqlHost = 'localhost';
SET @mysqlUser = 'ptm';
SET @mysqlPassword = 'ptm00';
SET @databaseName = 'pos';

-- Path to the backup file
SET @backupFilePath = 'backup.sql';

-- Connect to MySQL server
-- Note: You may need to adjust the command based on your MySQL installation, especially if the `mysql` executable is not in your system's PATH.
-- You can provide the full path to the `mysql` executable or add it to the system's PATH.
-- Example:
-- SET @mysqlCommand = 'C:\xampp\mysql\bin\mysql.exe';
SET @mysqlCommand = 'mysql';

-- Import the backup file
-- Note: You may need to provide the password directly in the command or use other authentication methods based on your MySQL setup.
-- Example:
-- SET @importCommand = CONCAT(@mysqlCommand, ' --host=', @mysqlHost, ' --user=', @mysqlUser, ' --password=', @mysqlPassword, ' --database=', @databaseName, ' < "', @backupFilePath, '"');
SET @importCommand = CONCAT(@mysqlCommand, ' --host=', @mysqlHost, ' --user=', @mysqlUser, ' --password=', @mysqlPassword, ' --database=', @databaseName, ' < "', @backupFilePath, '"');

-- Execute the import command
-- Note: The DELIMITER is used to change the default delimiter to avoid issues with semicolons in the script.
DELIMITER //
PREPARE importStatement FROM @importCommand;
EXECUTE importStatement;
DEALLOCATE PREPARE importStatement;
DELIMITER ;

-- Output a message
SELECT 'Database import complete.' AS 'Result';