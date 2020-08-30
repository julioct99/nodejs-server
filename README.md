# Node.js App Server

Nginx container to serve static sites

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Node.js_logo.svg/1280px-Node.js_logo.svg.png" width="20%">

## HOW TO USE 


###### 1 : 
Place the node app into the **app** directory

###### 2 : 
If Docker is not installed in the server, run the **get-docker** script with the command 
```./get-docker.sh``` using the root folder as the working dir.

###### 3 : 
Once Docker is installed, run the **deploy** script with ```./deploy.sh```. This script can be modified to customize the container settings.

###### 4 :
To update the content after modifying any file in the **app** (outside the container) dir, run the command ```./deploy.sh``` again.


## NOTES

The scripts probably won't be allowed to execute in the server initially. To give them the required permission, run the command ```chmod +x <script_name>```. For example, ```chmod +x deploy.sh``` will allow **deploy.sh** to run.
