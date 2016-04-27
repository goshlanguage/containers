Jenkins Container
===

Run example:
```sh
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v /home/jenkins:/var/jenkins_home -u 2222 --privileged solidarray/jenkins
```

Notes:
The volume directory permissions and the UID that runs it need to match. That user has to be jenkins, as it will be inside of the container.
