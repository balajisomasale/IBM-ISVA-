# IBM Data power Development - Basics 

https://rbc.udemy.com/course/ibm-datapower-development-basics/learn/lecture/30124806?start=58#overview

## Section 1 Introduction :: 

![image](https://user-images.githubusercontent.com/35003840/226248066-fb1a128b-d581-41ca-b3f5-ab44b3d8f941.png)


![image](https://user-images.githubusercontent.com/35003840/226248107-80ef8448-e1ee-4b17-b158-183ab558626b.png)


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



  
  


----- 
