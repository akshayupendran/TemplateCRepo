ONE TIME ACTIVITY:
1. Run BatchFile to Load Image
/* Sharing Options in case of Docker Toolbox */
2. Stop docker machine with docker-machine stop
3. Go To VrtialBox->default machine-> Settings -> SharedFolder -> AddShare -> YOUR_FOLDER_NAME, AUTOMOUNT=YES, No Mount Point
4. docker-machine start
5. docker-machine ssh
6. sudo vi /mnt/sda1/var/lib/boot2docker/profile
Add the following lines at the end:
	mkdir projects
	sudo mount -t vboxsf -o uid=1000,gid=50 [YOUR_FOLDERNAME_HERE] /home/docker/projects
7. docker-machine stop
8. docker-machine start

Conclusion:
Docker Toolbox is a pain.