# Write startup script bellow if needed.
useradd -d /var/home -s /bin/bash --user-group -u $HOST_UID $HOST_USER
su - $HOST_USER
