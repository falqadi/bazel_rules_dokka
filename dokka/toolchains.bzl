"""
Toolchains required by Dokka
"""

load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

def rules_dokka_toolchains(dokka_version = "1.7.2"):
    maven_install(
        name = "rules_dokka_dependencies",
        artifacts = [
            maven.artifact("org.jetbrains.dokka", "dokka-cli", dokka_version),
            maven.artifact("org.jetbrains.dokka", "dokka-analysis", dokka_version),
            maven.artifact("org.jetbrains.dokka", "dokka-base", dokka_version),
            maven.artifact("org.jetbrains.dokka", "gfm-plugin", dokka_version),
            maven.artifact("org.jetbrains.dokka", "javadoc-plugin", dokka_version),
            maven.artifact("org.jetbrains.kotlin", "kotlin-stdlib-jdk8", dokka_version),
            maven.artifact("org.jetbrains.kotlin", "kotlin-stdlib", dokka_version),
            maven.artifact("org.jetbrains.kotlin", "kotlin-reflect", dokka_version),
            maven.artifact("org.jetbrains.kotlinx", "kotlinx-coroutines-core", "1.7.3"),
            maven.artifact("org.jetbrains.kotlinx", "kotlinx-coroutines-core-jvm", "1.7.3"),
            maven.artifact("org.jetbrains.kotlinx", "kotlinx-html-jvm", "0.7.5"),
            maven.artifact("org.jetbrains", "markdown-jvm", "0.3.1"),
        ],
        repositories = [
            "https://jcenter.bintray.com/",
        ],
    )
