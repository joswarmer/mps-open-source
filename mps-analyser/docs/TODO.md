# TODOs

Some notes for me personally about what I still might like to do.
Not meant as an actual roadmap!


## Capabilities

1. &#10003; Be aware of (alternative) file structures of a module.
1. ... Export structure of languages, directly from XML to JSON.
1. ... Generate Kotlin code for deserializing models from XML.
1. ... Export models, directly from XML to JSON.
1. Track dependencies, and check for incorrect/unmatched language versions, and such.
1. Warn about unused (i.e., not referenced from `.mps/modules.xml`) modules.
    Or more generally: compare project/modules on disk with `.mps/modules.xml`, and generate fixes.


## Notes

* [polling with Java NIO](https://dzone.com/articles/event-driven-architecture-over-polling-architecture), for making things incremental
* [serialize references to JSON, without infinite recursion](https://www.logicbig.com/tutorials/misc/jackson/json-identity-info-annotation.html)


## Programmatic use of the MPS API

TODO:

1. Expose functionality of MPS Analyser through an actual (Kotlin) API instead of providing _some_ configurability.
2. Deprecate JSON configuration. (Generate script from a configuration, in a separate module?)
3. Expose some convenience in the form of a "forward continuation operator"/"pipe", so you can write: `mpsProjectPath |> Paths::get |> processModulesXml |> println`.
    (This can also already be done with `.let { }`.) 

E.g., run the following program:

```
import java.nio.file.*
import nl.dslconsultancy.mps.analyser.xml.*

fun main() {
    val mpsProjectPath = Paths.get("../mps-open-source")
    println(readModulesXmlIn(mpsProjectPath))
}
```


### Use Kotlin "scripts"

CLI command:

```
kotlinc -cp mps-analyser.jar -script myScript.kts
```

The script file would look something like:

```
import java.nio.file.*
import nl.dslconsultancy.mps.analyser.xml.*

val mpsProjectPath = Paths.get("../mps-open-source")
println(readModulesXmlIn(mpsProjectPath))
```

Unfortunately, this doesn't work (...yet), because of:

```
betelgeuse:mps-analyser meinte$ kotlinc -cp mps-analyser.jar -script src/test/resources/tryOnOwn.kts 
java.lang.IllegalArgumentException: Property com.ctc.wstx.addSpaceAfterEmptyElemis not supported
        at com.sun.xml.internal.stream.XMLOutputFactoryImpl.setProperty(XMLOutputFactoryImpl.java:146)
        at nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.initialise(jacksonXmlUtil.kt:31)
        at nl.dslconsultancy.mps.analyser.util.JacksonXmlUtil.xmlMapper(jacksonXmlUtil.kt:36)
        at nl.dslconsultancy.mps.analyser.xml.ModulesXmlKt.readModulesXmlIn(modulesXml.kt:109)
        at TryOnOwn.<init>(tryOnOwn.kts:5)
warning: some JAR files in the classpath have the Kotlin Runtime library bundled into them. This may cause difficult to debug problems if there's a different version of the Kotlin Runtime library in the classpath. Consider removing these libraries from the classpath
mps-analyser.jar: warning: library has Kotlin runtime bundled into it
```

