../../bin/./keytool -import -storepass changeit -alias artifactory -cacerts -trustcacerts -noprompt -file mycertificate.cer
keytool error: java.lang.Exception: Certificate not imported, alias <artifactory> already exists
