-------------

## Section 5 : Multi-protocol Gateway Service:

### Create service with HTTP as front side handler 

![image](https://user-images.githubusercontent.com/123116866/229390774-49a58fd4-89ad-4dfc-9a46-2c77f280745c.png)

How to Create it : 

![image](https://user-images.githubusercontent.com/123116866/229390911-a7d51cb2-db0e-46c3-b465-218e937b5955.png)

- Create a advanced service and add the `processing policy server`with matching rules 
- Create a matching rule as below : 

![image](https://user-images.githubusercontent.com/35003840/229391556-078d0e34-4c6b-42e7-9e8c-fdc3764f927f.png)

- Creating 2 rules; one for ` Client to server` and other is `Server to Client`
- attached the `Mock service` that was created earlier as `backend` response
- We can choose so many different communication protocols inside this Mutli-protocol gateway 

### Create service to accept HTTP communications from https protocol 

![image](https://user-images.githubusercontent.com/35003840/229392646-3cc85279-c80e-4cb8-922f-5871d9d2164f.png)

- We need to search for `Crypto Tools` to create certificates 

![image](https://user-images.githubusercontent.com/35003840/229392962-d185a58c-03a6-4d34-8fcd-a315763c2604.png)

![image](https://user-images.githubusercontent.com/35003840/229392990-22ddf48d-fff9-4e89-925e-3ca624e49013.png)

![image](https://user-images.githubusercontent.com/35003840/229393232-d0cd2c0d-f0b7-47e2-b5cf-0b479ced3c2b.png)

- we can find all `generated certificates `  in `File management/cert` with all the `.pem` files 
- created `Multi Protocol gateway policy` with the matching rules as below to accept `any` from client to server and vice versa

![image](https://user-images.githubusercontent.com/35003840/229393644-11bf27a2-4134-498e-a18d-fd42cc2f26fe.png)

- Configuring HTTPS Handler and selecting the `allowed methods` like GET, PUT, POST and other 
- We need to select TLS server type as we are trying to `Establish  Secure connection between Client and Datapower gateway`

How to Configure TLS Server and profile : 

![image](https://user-images.githubusercontent.com/35003840/229394045-624598d3-9ee4-4a7b-9482-22b5fb6d3099.png)

![image](https://user-images.githubusercontent.com/35003840/229394071-d275fdcb-baff-46fe-8509-43f4df16827a.png)

![image](https://user-images.githubusercontent.com/35003840/229394090-eabaaeda-6ee2-484c-a441-0fe3d1a8d67d.png)

![image](https://user-images.githubusercontent.com/35003840/229394115-a28e74de-0d15-439b-9325-e99a5896aa89.png)

- Once the TLS server profile is created, we can apply it

Testing : 

- `https` will ONLY fetch the `200 status`; all other like `http` will not work and gives `500 status`

-------------
