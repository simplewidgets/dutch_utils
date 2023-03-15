# Dutch Utils
This package provides common use cases for (Dutch) developers like (governmental API repsonse) models, formatters and Regex for common numbers within the Netherlands.


## What is in this package?
### Models for governmental API's


* #### KvK (Kamer van Koophandel)
    This packages has models for the API responses which you can create from the JSON response. The main classes are: `KVKapiSearchResponse`, `KVKapiBasicProfile`, `KVKapiNameProfile` and `KVKapiLocationProfile`.

    To use the API you have to create a developers account on the KVK website. With the API key you can now request data from this API. 

    _Please note: You have to validate the reponse by yourself with a .pem ceritificate. We use a NODEJS package on our server and then send it to the Flutter Client_


* #### RDW (Dutch licenseplate registration)
    This package has a model for the API response from the RDW. This API is open for everyone and does not use a type of authentication like an API key. With this model you can convert the JSON response.


### Common Regex
#### `DutchCommonRegex` class
This class has common Regex which checks if the provided string is valid. A few of the functions are:
- Is a valid KVK-number (bool)
- Is a valid BTW-number (bool)
- Is a valid IBAN-number (bool)
- Is a valid Postalcode (bool)
- And more

### Common String sormatters
#### `EuroFormatter` class
In the Netherlands we use the period`.` and comma`,` in the opposite way as the rest of the world. We use the comma as the divider between euro's and cents. So a thousand euro's is written like: €1.000,00 and a milion euro is written like: 1.000.000,00

This class provides simpleformatters to turn `int` values in to formatted strings.