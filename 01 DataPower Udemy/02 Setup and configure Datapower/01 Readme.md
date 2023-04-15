## Section 2 : Setup and Configure DataPower CONTAINER 

1) Run the Docker container for DATA POWER 
2) How to MOunt volumes to the HOST 
3) How to enable webmanagement to GUI and disabling it

Check this link for running the docker container of Datapower Image : 

https://www.ibm.com/docs/en/datapower-gateway/7.5.0?topic=docker-running-datapower-gateway-in-containers

For Datapower image : `docker pull ibmcom/datapower-operator-catalog` 

Run the Image as container : 

`docker run -it -v $PWD/config:/opt/ibm/datapower/drouter/config -v $PWD/local:/opt/ibm/datapower/drouter/local -e DATAPOWER_ACCEPT_LICENSE=true -e DATAPOWER_INTERACTIVE=true -p 9096:9099 --name DatapowerWindows ibmcom/datapower:latest`

Here `$PWD` is current working directory and `/opt/ibm/datapower/drouter/config` part will be created in the pwd folder same like below : 

  ![image](https://user-images.githubusercontent.com/35003840/226512975-8ea1e4cf-8bdb-4d9c-bb7f-e78865401303.png)


So Once the IDG(IBM Datapower Gateway) container is created, we will login as `admin` and pwd : `admin`

Now, The IDG console is created like below : 

![image](https://user-images.githubusercontent.com/35003840/226510200-7ec9b9cc-5781-41d3-8579-3003fe2a13e4.png)

- To enter config or global mode : enter `con` in console 
- use `web-mgmt 0.0.0.0 9099` here `web-mgmt` is used to `enable web management service mode` to allow the `9099 container port` and listen from all `traffic (0.0.0.0)`
- We can directly access the container from `Docker Desktop` > containers

![image](https://user-images.githubusercontent.com/35003840/226511981-74b1aa74-7877-4e56-83b8-b358c98da3f2.png)

- We need to change `https://localhost:9096` to access the IDG(IBM Datapower Gateway) Home webpage 
  
  ![image](https://user-images.githubusercontent.com/35003840/226512105-79a71c09-4406-49a1-9420-7ee18e87228a.png)
  
  ![image](https://user-images.githubusercontent.com/35003840/226512225-ca37ae72-6523-426e-a1a8-c09acfd2bfc2.png)
  
- To disable web management : `no web-mgmt`

### File Management in  Data Power : 

![image](https://user-images.githubusercontent.com/35003840/228106097-454b5394-5ff2-4382-95dd-80cda5345755.png)

![image](https://user-images.githubusercontent.com/35003840/228106135-26b553c8-b8aa-428f-ab16-fb7501d3222e.png)

![image](https://user-images.githubusercontent.com/35003840/228106222-c2cd922e-4aa4-40cf-8dc0-ea858b856d3b.png)

The usage in the file management in Datapower creates files in the local host itself 

![image](https://user-images.githubusercontent.com/35003840/228109678-7581b052-b482-4bb4-bc70-1ff3bfc34aae.png)

![image](https://user-images.githubusercontent.com/35003840/228109770-deaba5f2-0666-45d5-acc9-5f517c25777e.png)

![image](https://user-images.githubusercontent.com/35003840/228109827-c486aced-bd4e-4601-a533-b30240ab373d.png)

### CLI in data power : 

![image](https://user-images.githubusercontent.com/35003840/228109965-a0ff9d7e-a38b-44ad-8ab2-f34c09f21d1a.png)

![image](https://user-images.githubusercontent.com/35003840/228110304-2e06943a-a5e5-4927-aef8-875fc6d06c5e.png)

we can directly open this directory in the cli and can access the files that are present in the file management
