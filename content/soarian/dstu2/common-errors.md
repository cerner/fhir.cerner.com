---
title: Common Errors | Soarian DSTU 2 API
---

# CommonErrors

### Common Errors

If successful, the API will return a 200 HTTP Status Code. If the request was not successful, the following errors may be returned:

| HTTP Status code | Cause |
| --- | --- |
|400|This error occurs when the API request is made with unsupported parameters|
|403|This error occurs when the API request is made without a valid OAuth token|
|404|This error occurs when the API request is made with an invalid URL|
|500|This error occurs when the API request has failed|