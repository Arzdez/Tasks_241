#!/bin/bash

# 1.1
adduser -s /bin/bash user1
getent passwd user1

# 1.2
adduser -s /bin/sh user2
getent passwd user2

# 1.3
usermod -p pass1 user1
usermod -p pass2 user2

# 2
usermod -G wheel -a user1
id user1
usermod -G user1 -a user2
id user2

# 3
ls -la /home/student

# 4
touch file
chmod 777 file
ls -la

# 8

su - user1
sudo userdel user2
id user2

# 9
chown user1 file
ls -l
