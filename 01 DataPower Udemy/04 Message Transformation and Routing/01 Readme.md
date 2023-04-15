

-------------

### XSL Transformation - for-each loop 

Input : 
![image](https://user-images.githubusercontent.com/123116866/229387894-924298c6-e93b-4292-91dc-ae2edc254637.png)

XSL Transformation : 

![image](https://user-images.githubusercontent.com/123116866/229387973-097a2805-cb98-4c48-b9e9-0a5230f6480e.png)

Output: 

![image](https://user-images.githubusercontent.com/123116866/229388225-854761c6-dd7b-4f58-a0fb-1e0784b9ba68.png)

Next Steps : 
- create a new `xsl file` and paste the XSLT code and load it into XML Firewall services 
- Create service > add advanced > loopback service type and processing file will contain as below 

![image](https://user-images.githubusercontent.com/123116866/229388478-f35a41e8-ffd6-4694-93c7-0decaeb04ac7.png)

In Transform, upload the XSLT code that can `transform` the XML page 

![image](https://user-images.githubusercontent.com/123116866/229388583-e88d5533-1e4b-4114-b337-4b4b4cce3cd0.png)

Verification Test:

![image](https://user-images.githubusercontent.com/123116866/229388759-0ee4495a-4ea8-4252-839d-a74a391fdeca.png)


-------------

### XML Firewall - pass through Request 

If we use `Pass through` in `Request Type`, Even if we use the `transform` or any other, The output will be same as input as this is just 
`pass through`.

![image](https://user-images.githubusercontent.com/123116866/229389685-8a046684-05eb-493a-b259-b5736db11d20.png)

Input : 

![image](https://user-images.githubusercontent.com/123116866/229389712-45cfe504-446d-4777-8a06-3d4bb4f5ae41.png)

Output : 

![image](https://user-images.githubusercontent.com/123116866/229389734-15bff750-34c2-4896-b867-b12c09933dfa.png)

-------------

### XML Firewall - URL Rewrite Policy 

![image](https://user-images.githubusercontent.com/123116866/229390034-509739ec-8a0a-48df-ac38-391748cbc038.png)

URL : 

![image](https://user-images.githubusercontent.com/123116866/229390230-fe78db5f-2419-48be-a900-36b584f2edae.png)

we can use `URL Rewrite` to hide the actual `Endpoint URL` with a `proxy` uri 

![image](https://user-images.githubusercontent.com/123116866/229390404-1642383f-81d0-4486-b1b6-39b5eeded4f9.png)

![image](https://user-images.githubusercontent.com/123116866/229390509-c6895373-66b7-485b-89a1-969a00bcd277.png)

![image](https://user-images.githubusercontent.com/123116866/229390521-ef497abc-7782-43a9-b389-32940909ddf4.png)
