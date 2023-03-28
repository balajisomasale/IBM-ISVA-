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

### XML Firewall : 

![image](https://user-images.githubusercontent.com/35003840/228110632-73d0c570-e598-4eaf-87ec-56d8a4a80efa.png)

![image](https://user-images.githubusercontent.com/35003840/228111148-fa46014d-dd48-443f-b726-a6d41f0cfb2e.png)

Resources : 
Uploaded the local zip folder 

### XML server as loopback server : 
![image](https://user-images.githubusercontent.com/35003840/228111647-82c9ac6b-1bc7-4d65-8a8b-32a9629e850b.png)

Using XML firewall in services > Click Advanced or wizard to add a service 

![image](https://user-images.githubusercontent.com/35003840/228111751-b338ee8d-1e25-4756-9360-7314f5a296c1.png)

Types :

1) Static Backend : 
  We can see the back end details that are required 

![image](https://user-images.githubusercontent.com/35003840/228113182-c8d4dd95-1346-4000-b298-30a87f2bc7ad.png)

2) Loopback :
  It does not require the backend server details 
  
  ![image](https://user-images.githubusercontent.com/35003840/228113427-a5e879a3-f107-49c0-acf2-a21b69eac5f0.png)

https://www.ibm.com/docs/en/datapower-gateway/10.0.1?topic=firewall-creating-xml-wizard

Processing Policy : 

![image](https://user-images.githubusercontent.com/35003840/228113804-818e7eab-b1bc-4807-83c1-16022bd99d25.png)

![image](https://user-images.githubusercontent.com/35003840/228114086-f63b918d-faa5-4ffb-933c-90a23054137d.png)

Saving the configuration

![image](https://user-images.githubusercontent.com/35003840/228114713-c3aa9867-47d6-41bd-b0de-b475f1011df4.png)

Testing the configuration : 
- If we get the status code as 200, which means it is `SUCCESS` 
  
  ![image](https://user-images.githubusercontent.com/35003840/228115004-d089aa39-64b3-44fe-b631-350d2bf6e0ab.png)

  ![image](https://user-images.githubusercontent.com/35003840/228115323-dc183f98-774f-47b3-8c7b-9dddcff4e433.png)
 
  ![image](https://user-images.githubusercontent.com/35003840/228115501-ea96191d-b88e-4e63-92e1-90eb1bc2a610.png)
  
XML Firewall - Static endpoint 
  
![image](https://user-images.githubusercontent.com/35003840/228115969-f837b57d-72be-4584-8972-b7ca7b7171bb.png)

- We are creating Mock Service : choose looback which does not require back end 
   ![image](https://user-images.githubusercontent.com/35003840/228116441-8d1d032f-5387-4513-90a5-cc1346d8a6e0.png)

- We will create processing policy with customised match 
   ![image](https://user-images.githubusercontent.com/35003840/228117136-6c7f0cfd-5c17-4b84-941e-5daf69c7a400.png)

- Customised match :
  ![image](https://user-images.githubusercontent.com/35003840/228117262-c3b368fe-9022-4f18-b86a-72601482b3ec.png)

- We will get `Request` in below format like `customer` to `bank` using `XSLT Transformation`
  
  ![image](https://user-images.githubusercontent.com/35003840/228117710-67cab6f3-c808-4d16-8cef-62ab6da90594.png)

- XSLT Transformation : 
  we can copy that format as `file.xls` then upload it as file in `transform`   
    
    ![image](https://user-images.githubusercontent.com/35003840/228118556-b7cfccf3-7290-4c82-abbb-c1362ce4cd91.png)
    
    ![image](https://user-images.githubusercontent.com/35003840/228118916-a6f32b19-5416-464b-8686-dc0e99d4e791.png)

- Apply it and exit out and then apply in firewall and move to `Front End - local address` and choose already created one
 
  ![image](https://user-images.githubusercontent.com/35003840/228119591-70fd82a9-d030-43b4-8d72-de8eacdcc305.png)
  
- then `Apply` and then `Save Configuration` 

Testing the configuration : 

![image](https://user-images.githubusercontent.com/35003840/228119879-4f1a8936-13f9-45e8-b372-2cef2760a43e.png)

Result in `Response Body` : 

![image](https://user-images.githubusercontent.com/35003840/228120000-990cf7a3-bbce-47eb-8ef9-f661d02ae373.png)

---------

XML Firewall - Static Backend : 

- Since the type is `Static Backend`, we will have to provide the `Backend - Remote Host address` 
- We can mention the `Front end address` of `MockService`(previous one - `response`) as `Backend` as a request to it 

![image](https://user-images.githubusercontent.com/35003840/228120799-be21002f-a41c-4eaf-9bb2-862c750fb056.png)

Flow : 

![image](https://user-images.githubusercontent.com/35003840/228121866-c01a0a9e-247d-468b-9839-a4445fd05b38.png)


- Create a `Static Policy Server` - We need to create 2 separate rules 
- 1 for`Client to server` and other is  `server to client `. 

Creating Policy server for `Client to server` : 
- we need to create NEW `match` 
![image](https://user-images.githubusercontent.com/35003840/228121632-45f82f41-f6f9-432f-9c8d-c89de5980f38.png)

![image](https://user-images.githubusercontent.com/35003840/228121741-1bd19b9e-c0eb-49b3-ae00-4f3cb0c9b461.png)

Creating Pilicy server for `Server to Client` 

Here we need to send the server(Datapower) data format with `Transformation` to the client 

![image](https://user-images.githubusercontent.com/35003840/228122725-08a9a4a2-186e-4385-88c4-883fef05671d.png)

Saving the configuration : 
![image](https://user-images.githubusercontent.com/35003840/228122893-62b01f69-e7e7-44c4-a94d-03cf0ed099dc.png)

Testing the configuration : 

![image](https://user-images.githubusercontent.com/35003840/228123269-3c5047a1-2517-42a2-9157-7d2b4ed8f23f.png)


Note : We can check both the ports(Backend and frontend) in the URL to check if the data is accurate and valid 

-------------------------
### XML Firewall - Dynamic Endpoint 

Start from here 



  
  


----- 
