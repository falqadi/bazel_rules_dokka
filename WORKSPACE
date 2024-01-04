workspace(name = "rules_dokka")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

## Dokka Dependencies

load("//dokka:dependencies.bzl", "rules_dokka_dependencies")

rules_dokka_dependencies()

## Dokka Toolchains

load("//dokka:toolchains.bzl", "rules_dokka_toolchains")

rules_dokka_toolchains()

## Dokka Testing

SKILIB_VERSION = "1.5.0"

SKYLIB_SHA = "cd55a062e763b9349921f0f5db8c3933288dc8ba4f76dd9416aac68acee3cb94"

http_archive(
    name = "bazel_skylib",
    sha256 = SKYLIB_SHA,
    url = "https://github.com/bazelbuild/bazel-skylib/releases/download/{v}/bazel-skylib-{v}.tar.gz".format(v = SKILIB_VERSION),
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()
