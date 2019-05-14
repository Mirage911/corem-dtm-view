# corem-dtm-view
Java lib for serving the doctype-model of the current CoreMedia-cms repository. It is build for CoreMedia CMS v8.

## Prerequisite
- for user: CoreMedia CMS version 8
- for developer: you need a CoreMedia support account, see http://support.coremedia.com
## Activation
- add this module as maven-dependency in your project
```xml
    <dependency>
      <groupId>it.siegert</groupId>
      <artifactId>corem-dtm-view</artifactId>
      <version>1.0.3</version>
    </dependency>
```
- import spring config in your application
```xml
    <import resource="classpath:/it/siegert/corem-dtm-view.xml" />
```
- build and restart your application
## Usage
- http://<YOUR_APP_SRRVER>:<PORT>/<WEBAPP_NAME>/<SPRING_SERVLET>/contentTypes

## Examples
- http://localhost:49080/blueprint/servlet/contentTypes
- http://localhost:40081/blueprint/servlet/contentTypes?doctype=CMObject
- http://dev0815.example.com:8080/blueprint/servlet/contentTypes?doctype=CMLinkable
