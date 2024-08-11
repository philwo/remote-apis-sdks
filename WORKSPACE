workspace(name = "bazel_remote_apis_sdks")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "bazel_skylib",
    sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
    ],
)

load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

bazel_skylib_workspace()

# protobuf (https://github.com/protocolbuffers/protobuf)
http_archive(
    name = "com_google_protobuf",
    sha256 = "a49147217f69e8d19aab0cc5c0059d6201261f5cb62145f8ab4ac8b94e7ffa86",
    strip_prefix = "protobuf-27.3",
    urls = [
        "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/releases/download/v27.3/protobuf-27.3.zip",
        "https://github.com/protocolbuffers/protobuf/releases/download/v27.3/protobuf-27.3.zip",
    ],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

# rules_proto (https://github.com/bazelbuild/rules_proto)
http_archive(
    name = "rules_proto",
    sha256 = "6fb6767d1bef535310547e03247f7518b03487740c11b6c6adb7952033fe1295",
    strip_prefix = "rules_proto-6.0.2",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/releases/download/6.0.2/rules_proto-6.0.2.tar.gz",
        "https://github.com/bazelbuild/rules_proto/releases/download/6.0.2/rules_proto-6.0.2.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies")

rules_proto_dependencies()

load("@rules_proto//proto:setup.bzl", "rules_proto_setup")

rules_proto_setup()

load("@rules_proto//proto:toolchains.bzl", "rules_proto_toolchains")

rules_proto_toolchains()

# rules_go (https://github.com/bazelbuild/rules_go)
http_archive(
    name = "io_bazel_rules_go",
    sha256 = "d93ef02f1e72c82d8bb3d5169519b36167b33cf68c252525e3b9d3d5dd143de7",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.49.0/rules_go-v0.49.0.zip",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.49.0/rules_go-v0.49.0.zip",
    ],
)

http_archive(
    name = "bazel_gazelle",
    sha256 = "8ad77552825b078a10ad960bec6ef77d2ff8ec70faef2fd038db713f410f5d87",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.38.0/bazel-gazelle-v0.38.0.tar.gz",
        "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.38.0/bazel-gazelle-v0.38.0.tar.gz",
    ],
)

load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
load("//:go_deps.bzl", "remote_apis_sdks_go_deps")

# gazelle:repository_macro go_deps.bzl%remote_apis_sdks_go_deps
remote_apis_sdks_go_deps()

go_rules_dependencies()

go_register_toolchains(version = "1.22.6")

gazelle_dependencies()

# gRPC (https://github.com/grpc/grpc)
http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "d8aa3b32866d6a0ffc18f913e7315a68f2bc067cc98c6ec5c5abdd92febbd45b",
    strip_prefix = "grpc-1.65.4",
    urls = ["https://github.com/grpc/grpc/archive/refs/tags/v1.65.4.zip"],
)

load("@build_bazel_rules_apple//apple:repositories.bzl", "apple_rules_dependencies")
load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")
load("@rules_python//python:repositories.bzl", "py_repositories")

grpc_deps()

apple_rules_dependencies()

py_repositories()

# googleapis (https://github.com/googleapis/googleapis)
http_archive(
    name = "googleapis",
    sha256 = "a04445dd10a0a371bcf1df7a6af7d81d69d6522c38cad8487653f8d86c71aadd",
    strip_prefix = "googleapis-5b517c2637fa5b4cb8f5323af33e19f31c31b4da",  # date: 2024-08-10
    urls = ["https://github.com/googleapis/googleapis/archive/5b517c2637fa5b4cb8f5323af33e19f31c31b4da.zip"],
)

load("@googleapis//:repository_rules.bzl", "switched_rules_by_language")

switched_rules_by_language(
    name = "com_google_googleapis_imports",
)
