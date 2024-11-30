#!/bin/bash

###############################################
# File System Navigation
###############################################

# List the contents of the home directory.
ls ~

# Change the current directory to /var/log and list its contents.
cd /var/log
ls

# Find and display the path to the bash executable.
which bash

# Find the current shell
echo $SHELL

###############################################
# File and Directory Operations
###############################################

# Create a directory named linux_fundamentals in your home directory.
cd ~
mkdir linux_fundamentals

# Inside linux_fundamentals, create a subdirectory named scripts.
cd linux_fundamentals
mkdir scripts

# Create an empty file named example.txt inside the linux_fundamentals directory.
touch example.txt

# Copy example.txt to the scripts directory.
cp example.txt scripts

# Move example.txt from linux_fundamentals to linux_fundamentals/backup.
mkdir backup
mv example.txt backup

# Change the permissions of example.txt to read and write for the owner, and read-only for the group and others.
chmod 644 example.txt

# Verify the permission changes using ls -l
ls -l

###############################################
# File Modification
###############################################

# Create a file named example.txt in your home directory.
cd ~
touch example.txt

# Change the owner of example.txt to a user named student
chown student example.txt

# Change the group of example.txt to a group named students.
chown :students example.txt

# Verify the changes using appropriate commands.
ls -al example.txt

###############################################
# Ownership
###############################################

# Create a directory named project in your home directory.
cd ~
mkdir project

# Create a file named report.txt inside the project directory.
touch report.txt

# Set the permissions of report.txt to read and write for the owner, and read-only for the group and others.
chmod 644 report.txt

# Set the permissions of the project directory to read, write, and execute for the owner, and read and execute for the group and others
chmod 755 project

# Verify the changes using appropriate commands.
ls -al

###############################################
# User add/modify
###############################################

# Create a new user named developer.
useradd developer

# Set the home directory of the user developer to /home/developer_home.
mkdir /home/developer_home
usermod -d /home/developer_home -m developer

# Assign the shell /bin/sh to the user developer.
usermod -s /bin/sh developer

# Verify the new user's information.
cat /etc/passwd | grep developer

# Change the username of the user developer to devuser.
usermod -l devuser developer

# Add devuser to a group named devgroup.
usermod -aG devgroup devuser

# Set the password of devuser to devpass.
echo "devuser:devpass" | chpasswd

# Verify the changes made to the user.
cat /etc/passwd | grep developer
groups devuser
passwd -S devuser

###############################################
# Hard/Soft Link
###############################################

# Create a file named original.txt in your home directory.
touch original.txt

# Create a symbolic link named softlink.txt pointing to original.txt.
ln -s original.txt softlink.txt

# Verify the symbolic link and ensure it points to the correct file.
ls -l softlink.txt

# Delete the original file original.txt and observe the status of the symbolic link.
rm original.txt
ls -l softlink.txt

# Create a file named datafile.txt in your home directory.
touch datafile.txt

# Create a hard link named hardlink.txt pointing to datafile.txt
ln datafile.txt hardlink.txt

# Verify the hard link and ensure it correctly points to the file.
echo "hardlink check" > datafile.txt
cat hardlink.txt

# Check the inode of both datafile.txt and hardlink.txt
s -li datafile.txt hardlink.txt

# Delete the original file datafile.txt and observe the status of the hard link.
rm datafile.txt
ls -al
cat hardlink.txt

# Find all .txt files in your home directory
find ~/ -type f -name "*.txt"
