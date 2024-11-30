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
