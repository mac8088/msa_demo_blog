title ms-gateway:8080
del gateway*.log
java --add-opens=java.base/java.lang=ALL-UNNAMED --add-opens java.base/jdk.internal.misc=ALL-UNNAMED -Dspring.security.oauth2.client.provider.oidc.issuer-uri=http://keycloak:9080/auth/realms/jhipster -Dio.netty.tryReflectionSetAccessible=true -jar target\gateway-0.0.1-SNAPSHOT.jar >> gateway.log