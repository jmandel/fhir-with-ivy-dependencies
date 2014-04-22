### To run the FHIR Publisher
First ensure that [ant 1.9+](http://ant.apache.org/bindownload.cgi) is installed on your system.

1. Run `publish.bat` (windows) or `publish.sh` (OSX/Linux)
2. Wait for it to finish (~10 minutes)

See also: [FHIR Build Process](http://wiki.hl7.org/index.php?title=FHIR_Build_Process)

### To build and run the FHIR Publisher via ant
```
ant -f tools/java/org.hl7.fhir.tools.core/build.xml \
       Publisher \
       -Dargs=\"$(pwd)\"
```
---

### Command line parameters to publish.sh / publish.bat

 * `-nogen`: don't generate the spec, just run the validation. (to use this,
   manually fix things in the publication directory, and then migrate the
changes back to source when done. this is a hack)

 * `-noarchive`: don't generate the archive. Don't use this if you're a core
   editor

 * `-web`: produce the HL7 ready publication form for final upload (only core
   editors)

 * `-diff`: the executable program to use if platform round-tripping doesn't
   produce identical content (default: c:\program files
(x86)\WinMerge\WinMergeU.exe)

 * `-name`: the "name" to go in the title bar of each of the specification

