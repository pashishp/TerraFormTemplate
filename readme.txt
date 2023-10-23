../../bin/./keytool -import -storepass changeit -alias artifactory -cacerts -trustcacerts -noprompt -file mycertificate.cer
keytool error: java.lang.Exception: Certificate not imported, alias <artifactory> already exists


Update Existing Alias: If you want to update the existing alias with a new certificate, you can delete the existing alias first and then import the new certificate with the same alias. Use the following commands:
../../bin/./keytool -delete -alias artifactory -keystore <path-to-keystore> -storepass changeit
../../bin/./keytool -import -storepass changeit -alias artifactory -cacerts -trustcacerts -noprompt -file mycertificate.cer

eplace <path-to-keystore> with the path to your keystore.

List Aliases: You can also list the existing aliases in the keystore to see if "artifactory" is already present:
../../bin/./keytool -list -keystore <path-to-keystore> -storepass changeit


