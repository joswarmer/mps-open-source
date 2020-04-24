package nl.dslconsultancy.mps.analyser

import nl.dslconsultancy.mps.analyser.util.JacksonJsonUtil.writeJson
import nl.dslconsultancy.mps.analyser.util.csvRowOf
import nl.dslconsultancy.mps.analyser.util.div
import java.nio.file.Files
import java.nio.file.Paths

fun generateKotlinFor(structure: Structure): Iterable<String> = structure.concepts().flatMap { it.generateKotlinFor() }

private fun StructuralElement.generateKotlinFor(): Iterable<String> =
    when (this) {
        is Concept -> {
            when {
                isInterface -> listOf("interface $name")
                else -> {
                    val supers = superTypes()
                    listOf(
                        "data class $name(",
                        features.filterIsInstance<Property>().joinToString(",\n") { "\t${it.name}: String" },
                        ")" + (if (supers.isEmpty()) "" else " : " + supers.map { it.name }.joinToString(", ")),
                        ""
                    )
                }
            }
        }
    }

private fun Concept.superTypes(): List<Concept> =
    (if (extends == null) emptyList() else listOf(extends!!)) + implements


fun generateCsvFor(structure: Structure): Iterable<String> = structure.concepts().flatMap { it.generateCsvFor() }

private fun StructuralElement.generateCsvFor(): Iterable<String> =
    when (this) {
        is Concept -> listOf(csvRowOf(name, deprecated)) + features.map { csvRowOf("${this.name}#${it.name}", it.deprecated) }
    }


fun GenerateFromStructure.run(mpsProjectOnDisk: MpsProjectOnDisk) {
    val language = mpsProjectOnDisk.languages.find { it.name == languageName }
    if (language == null) {
        System.err.println("no language with name '$languageName' in MPS project")
        return
    }
    val structure = language.structure()
    val genPath = Paths.get(generationPath)
    writeJson(structure, genPath/"export-${language.name}.json")
    Files.write(genPath/"kotlin-${language.name}.kt", generateKotlinFor(structure))
    Files.write(genPath/"projectit-${language.name}.lang", generateProjectItFor(languageName, structure))
    Files.write(
        genPath/"structure-${language.name}.csv",
        listOf(csvRowOf("\"concept[#feature]\"", "deprecated")) + generateCsvFor(structure).sorted()
    )
    println("wrote \"stuff\" generated for structure of '${language.name}' to '$genPath'")
}

////////////////////////////////
// ProjectIt stuff
///////////////////////////////
fun generateProjectItFor(languageName: String, structure: Structure): Iterable<String> =
    listOf("language $languageName\n").plus(
        structure.concepts().flatMap {structuralElement ->  structuralElement.generateProjectItFor() }).plus(
        structure.enumerations().flatMap {enumeration ->  enumeration.generateProjectItFor() })

private fun Concept.superConcepts(): List<Concept> =
    (if (extends == null) emptyList() else listOf(extends!!))

private fun Concept.superInterfaces(): List<Concept> =
    (if (true) emptyList() else listOf(extends!!)) + implements

private fun Link.listMarker(): String =
    (if (cardinality == "0..n" || cardinality == "1..n") "[]" else "")

private fun Property.type(): String =
    // Might want to check whether the constrained datatype exists
    (if (listOf("string", "boolean", "integer").contains(targetType) ) "$targetType" else "string")



private fun StructuralElement.generateProjectItFor(): Iterable<String> =
    when (this) {
        is Concept -> {
            when {
                isInterface -> {
                    val supers = superInterfaces()
                    listOf(
                        "interface $name" +(if (supers.isEmpty()) "" else " base " + supers.map { it.name }.joinToString(", ")) + " {",
                        features.filterIsInstance<Property>().joinToString(",\n") {property ->  "\t${property.name}: ${property.targetType}" },
                        "}" ,
                        ""
                    )
                }
                else -> {
                    val superConcepts = superConcepts()
                    val superInterfaces = superInterfaces()
                    listOf(
                        "concept $name " + (if (superConcepts.isEmpty()) "" else " base " + superConcepts.map { it.name }.joinToString(", ")) +
                            (if (superInterfaces.isEmpty()) "" else " implements " + superInterfaces.map { it.name }.joinToString(", ")) + " {",
                        features.filterIsInstance<Property>().joinToString("\n") {property ->
                            "\t${property.name}: ${property.type()};"},
                        features.filterIsInstance<Link>().joinToString("\n") {link ->
                            (if (link.reference) "\treference " else "\t") + "${link.name}: ${link.targetType}" + link.listMarker() + ";" },
                        "}" ,
                        ""
                    )
                }
            }
        }
    }

private fun Enumeration.generateProjectItFor(): Iterable<String> =
    when (this) {
        is Enumeration -> {
                    listOf(
                        "enumeration $name {",
                        members.joinToString(",\n") {enumerationMember ->  "\t${enumerationMember.name}" },
                        "}" ,
                        ""
                    )
                }
        else -> { listOf("") }
    }