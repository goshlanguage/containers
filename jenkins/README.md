Jenkins Container
===

Setup
---

Mac OSX
---

You will need to either sudo the following commands, or escalate to root to run:

```sh
# mkdir /Users/jenkins
# dscl . -create /Users/jenkins
# dscl . -create /Users/jenkins UserShell /bin/bash
# dscl . -create /Users/jenkins RealName "Leeroy Jenkins"
# dscl . -create /Users/jenkins UniqueID "2222"
# dscl . -create /Users/jenkins PrimaryGroupID 2222
# chown jenkins. /Users/jenkins
# mkdir -p /Users/jenkins/jenkins_home
```

Run example:

Linux

```sh
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v /home/jenkins:/var/jenkins_home -u 2222 jenkins
```

Mac
```sh
docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v /Users/jenkins:/var/jenkins_home -u 2222 jenkins
```

Notes:
The volume directory permissions and the UID that runs it need to match. That user has to be jenkins, as it will be inside of the container.
