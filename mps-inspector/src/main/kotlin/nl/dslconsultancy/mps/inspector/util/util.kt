package nl.dslconsultancy.mps.inspector.util

import java.io.File
import java.nio.file.Path
import java.util.stream.Collectors
import java.util.stream.Stream

fun Iterable<String>.isSorted(): Boolean = zip(drop(1)).all { it.first <= it.second }


fun <T> Stream<T>.asList(): List<T> = collect(Collectors.toList())


fun String.lastSection(ch: Char): String {
    val index = lastIndexOf(ch)
    return if (index + 1 <= length) substring(index + 1) else this
}

fun String.lastSection(): String = lastSection('.')

fun Path.lastSection(): String = toString().lastSection(File.separatorChar)


fun csvRowOf(vararg items: Any): String = items.joinToString(",")

fun Iterable<String>.asCsvRow(): String = joinToString(",")


typealias CountingMap<T> = Map<T, Int>

fun <T> CountingMap<T>.combine(other: CountingMap<T>): CountingMap<T> {
    val newMap = hashMapOf<T, Int>()
    toMap(newMap)
    other.entries.forEach {
        newMap += it.key to ((this[it.key] ?: 0) + it.value)
    }
    return newMap
}

