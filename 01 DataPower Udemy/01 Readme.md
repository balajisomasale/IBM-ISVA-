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

![image](https://user-images.githubusercontent.com/35003840/228311661-4e3eb286-856f-4e17-8356-bcf6fe9b5a76.png)

- Creating `Mock service2` with policy services in both the directions 

![image](https://user-images.githubusercontent.com/35003840/228315872-0ddd2cb1-ef50-4fe0-b2b1-da4513cffec5.png)

Testing the configuration :

![image](https://user-images.githubusercontent.com/35003840/228316510-e187b7da-7e3d-4e61-a3c9-49120726e0a1.png)

![image](https://user-images.githubusercontent.com/35003840/228316602-26906ef1-3d97-44a1-9be3-7c19a6bd2dd0.png)

Creating Dynamic Endpoint : 

![image](https://user-images.githubusercontent.com/35003840/228317064-d34d8cff-e32e-47f3-adf2-ebcacd1be40f.png)

- Type will be `Dynamic Backend` and will create 2 rules for `client to server` and then `server to client`

Client to Server : 

![image](https://user-images.githubusercontent.com/35003840/228318494-e3b06e6f-c2c1-46a7-b50a-2ddbce56c3f1.png)

![image](https://user-images.githubusercontent.com/35003840/228318616-860e943e-daa4-413e-8cc8-2cce5dac0989.png)

- We will be using `Route` option that we can drag and drop from toolbar
- We use `Xpath to select Destination` and then add `XPath Routing Path` and create `Rule` in it

![image](https://user-images.githubusercontent.com/35003840/228319309-b7704fda-963a-4b7d-bb9f-3d702e72c839.png)

![image](https://user-images.githubusercontent.com/35003840/228320867-b554210a-ddd1-46ca-a0f8-3adab4f8dad3.png)

Note : The `XPath Expression` can be created by checking(Viewing) the type ; Here it is `Card` type 

![image](https://user-images.githubusercontent.com/35003840/228321187-8d5d71f0-1565-4c84-b1f8-625e2a7ec2f7.png)

Flow : 

- Patch is over, routing is over; Based on card, the request goes to Route 

![image](https://user-images.githubusercontent.com/35003840/228322040-4735c1f8-21e0-4937-be31-bf3f28daa3ad.png)


Testing Configuration : 

- If the Card type is `card` or `netbanking` it will give `SUCCESS (200 status) `
- If not, it will give `Status 500`

![image](https://user-images.githubusercontent.com/35003840/228328663-1072342c-314f-4555-9034-0c829ce686c4.png)

![image](https://user-images.githubusercontent.com/35003840/228328982-750302c9-4e13-4d90-a623-6b7a3d756c5f.png)

To view the logs of each and every activity : 
  
  ![image](https://user-images.githubusercontent.com/35003840/228329276-ca7a0022-3c5f-4820-bf27-0a291ffa7e76.png)

  ![image](https://user-images.githubusercontent.com/35003840/228329418-377bc728-e6a2-4c79-a22c-78963489b081.png)

------------------


### How to test using commands : 

- Earlier, We used `Test message` via GUI 
- Open the Docker container, In which we have CLI -> we can use `CURL` the `HTTPS` service 
- `curl -H "content-Type:text/xml" --data-binary @request1.xml http://172.17.0.2:2050/payment` where `-H` is header and the content type can be `text/xml` or `application/json` or other 
  
  ![image](https://user-images.githubusercontent.com/35003840/228330003-e79e71b7-65ec-4d5b-8e47-e5d3bfb10ce3.png)

------------------

### Create XML firewall service for JSON 
message: 

- XML firewall that accepts JSON service 
- Create a service that can have loopback with processing policy with Matching rules -> Both Directions 
- created `/json1` URL in the matching rule 
- Since its Both directions, we will give `1 Matching rule` and send the `response back`

![image](https://user-images.githubusercontent.com/35003840/228332230-7ad16fb2-4fcb-4442-881e-a3730ac91b56.png)

![image](https://user-images.githubusercontent.com/35003840/228332767-dcdff6f0-137e-4586-abf0-e57392723e6b.png)

Overall Configuration created : 

![image](https://user-images.githubusercontent.com/35003840/228333140-bf6345f2-a749-4794-9138-95be3009bf65.png)

- Now, We will try to upload files in `File Management` from GUI and check the local files are getting the `json` files or not : local > Upload files > select files from directory > `sample1.json` 

![image](https://user-images.githubusercontent.com/35003840/228384846-e6d2fc43-56bf-4369-8001-ef673a210446.png)

- Checking that in `CLI` and executing curl request here 
- `cd to local` folder; use `curl -H "content-Type:test/json" --data-binary @sample.xml http://172.17.0.2:2053/json1`

![image](https://user-images.githubusercontent.com/35003840/228385866-3ec2f096-890d-41f4-8f85-01256a13e9ed.png)

-------------

### XSL Transformation - for-each loop 

Start from here 

  
  


----- 
