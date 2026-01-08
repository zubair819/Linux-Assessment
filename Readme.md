task 1: Configure smtp in localhost.

Installed and configured Postfix SMTP server for localhost mail delivery.

Script: smtp/setup_smtp.sh

Verification:
Local emails can be sent and received using the `mail` command.

Task 2: Create a user in your localhost, which should not be able to execute the sudo command.

Script: user-management/create-user.sh

Steps:
1. Run the script.
2. Enter username and password.
3. Switch to the user using `su - username`.
4. Execute `sudo ls`.

Task 3: Configure your system in such a way that when a user type and executes a describe command from anywhere of the system it must list all the files and folders of the user's current directory.

Ex:- $ describe
$  content1 content2
Content3 content 4

Created a global command named `describe`.

Location:
`/usr/local/bin/describe`

Function:
Lists all files and folders of the current directory from anywhere in the system.


Task 4: Users can put a compressed file at any path of the linux file system. The name of the file will be research and the extension will be of compression type, example for gzip type extension will be .gz. You have to find the file and check the compression type and uncompress it.

Script: compression/extract.sh

Function:
Searches entire filesystem for `research.*`, identifies compression type, and extracts the file.

Task 5: Configure your system in such a way that any user of your system creates a file then there should not be permission to do any activity in that file.
Note:- Don’t use the chmod command.

Script: permissions/restrict-files.sh

Implementation:
Configured `umask 777` so newly created files have no permissions without using chmod.


Task 6: Create a service with the name showtime , after starting the service, every minute it should print the current time in a file in the user home directory.

Ex:-
sudo service showtime start   -> It should start writing in file.
sudo service showtime stop   -> It should stop writing in file.
sudo service showtime status -> It should show status.Service Name: showtime

Function:
Writes current time to `~/showtime.log` every minute.

Commands:
sudo service showtime start  
sudo service showtime status  
sudo service showtime stop

