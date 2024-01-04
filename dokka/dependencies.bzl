"""
Dependencies required by Dokka
"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def rules_dokka_dependencies():
    """Fetches the dependencies for rules_dokka

    Fetches dependencies for the `rules_dokka` WORKSPACE.
    """

    # JVM External

    RULES_JVM_EXTERNAL = "4.4.2"
    RULES_JVM_EXTERNAL_SHA = "9004ff5980b3eac3b00041078a7b0abf5d75d30497fbde2c432a838281e22860"

    maybe(
        repo_rule = http_archive,
        name = "rules_jvm_external",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/{}.tar.gz".format(RULES_JVM_EXTERNAL),
        strip_prefix = "rules_jvm_external-{}".format(RULES_JVM_EXTERNAL),
        sha256 = RULES_JVM_EXTERNAL_SHA,
    )
