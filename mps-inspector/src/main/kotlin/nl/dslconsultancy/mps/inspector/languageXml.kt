package nl.dslconsultancy.mps.inspector

import nl.dslconsultancy.mps.inspector.XmlDomUtil.readXml
import java.nio.file.Path

data class Language(
    val name: String,
    val uuid: String,
    val languageVersion: Int,
    val dependencies: List<Dependency>
)

data class Dependency(
    val reexport: Boolean,
    val dependencyId: String
)


fun readLanguageFile(path: Path): Language {
    val xmlDoc = readXml(path)

    val root = xmlDoc.firstChild()
    return Language(
        root.attribute("namespace"),
        root.attribute("uuid"),
        Integer.parseInt(root.attribute("languageVersion")),
        xmlDoc.xPathAsNodes("//language/dependencies/dependency").map { Dependency(it.attribute("reexport").equals("true"), it.textContents()) }
    )
}
