#/bin/bash
echo "Running publication process now with args: '$@'"
ant -f tools/java/org.hl7.fhir.tools.core/build.xml Publisher -Dargs=\"$@\"
