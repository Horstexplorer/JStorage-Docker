# JStorage-Docker
###### JStorage Running In An Alpine Based Docker

## Usage
Pull from DockerHub 

```
docker pull horstexplorer/jstorage:<tag>
```

Use something like that to execute
```bash
docker run 
-it                                                                         // ! run interactive !
--name="JStorage" 
--log-driver=none                                                           // ! disable logging (otherwise it might catch some keys on the input)
-v <host>/certificate.pem:/JSTORAGEINSTALL/jstorage/cert/certificate.pem    // ! mount cert file - Using the included certificate & key is not recommended
-v <host>/key.pem:/JSTORAGEINSTALL/jstorage/cert/key.pem                    // ! mount key file - Using the included certificate & key is not recommended
-v <host>/data/:/JSTORAGEINSTALL/jstorage/data/                             // mount data dir
-v <host>/config/:/JSTORAGEINSTALL/jstorage/config/                         // mount config
-p 443:443/tcp                                                              // expose default ports for the hello socket
-p 8887:8887/tcp                                                            // expose default ports for the notification socket
-p 8888:8888/tcp                                                            // expose default ports for the api socket
-e ARGS=<jstorage command line arguments>                                   // add arguments to the execution
horstexplorer/jstorage:<tag>
``` 
