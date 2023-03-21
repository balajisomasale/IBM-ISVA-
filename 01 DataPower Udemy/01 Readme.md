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

docker run -it -v $PWD/config_myConfig:/drouter/config -v $PWD/local_mylocal:/drouter/local -e DATAPOWER_ACCEPT_LICENSE=true -e DATAPOWER_INTERACTIVE=true -e DATAPOWER_WORKER_THREADS=4 -p 9090:9090 


----- 
