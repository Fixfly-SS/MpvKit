// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MPVKit",
    platforms: [.macOS(.v11), .iOS(.v14), .tvOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "LibMpv",
            type: .static,
            targets: ["LibMpv"]
        ),
        .library(
            name: "FFmpegKit",
            targets: ["FFmpegKit"]
        ),
        .library(
            name: "Libffmpeg",
            type: .static,
            targets: ["Libffmpeg"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "LibMpv",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libuchardet",
                "Liblcms2", "Libplacebo", "Libluajit", "Libshaderc", "Libmpv", "MoltenVK", "Libdav1d", "Libbluray", "Libpng",
                .target(name: "Libdovi", condition: .when(platforms: [.iOS]))
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreAudio"),
                .linkedFramework("CoreText"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("z"),
                .linkedLibrary("c++")
            ]
        ),
        .target(
            name: "Libffmpeg",
            dependencies: [
                "Libavcodec", "Libavdevice", "Libavfilter", "Libavformat", "Libavutil", "Libswresample", "Libswscale",
                "Libssl", "Libcrypto", "Libass", "Libfreetype", "Libfribidi", "Libharfbuzz", "Libplacebo", "Libshaderc", "MoltenVK", "Libdav1d", "Libbluray", "Libpng",
                .target(name: "Libdovi", condition: .when(platforms: [.iOS]))
            ],
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("CoreText"),
                .linkedFramework("CoreFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("Metal"),
                .linkedFramework("VideoToolbox"),
                .linkedLibrary("bz2"),
                .linkedLibrary("xml2"),
                .linkedLibrary("iconv"),
                .linkedLibrary("z"),
                .linkedLibrary("c++")
            ]
        ),
        .target(
            name: "FFmpegKit",
            dependencies: ["Libffmpeg"]
        ),
        .binaryTarget(
            name: "Libass",
            path: "Sources/Libass.xcframework"
        ),
        .binaryTarget(
            name: "Libavcodec",
            path: "Sources/Libavcodec.xcframework"
        ),
        .binaryTarget(
            name: "Libavdevice",
            path: "Sources/Libavdevice.xcframework"
        ),
        .binaryTarget(
            name: "Libavfilter",
            path: "Sources/Libavfilter.xcframework"
        ),
        .binaryTarget(
            name: "Libavformat",
            path: "Sources/Libavformat.xcframework"
        ),
        .binaryTarget(
            name: "Libavutil",
            path: "Sources/Libavutil.xcframework"
        ),
        .binaryTarget(
            name: "Libbluray",
            path: "Sources/Libbluray.xcframework"
        ),
        .binaryTarget(
            name: "Libcrypto",
            path: "Sources/Libcrypto.xcframework"
        ),
        .binaryTarget(
            name: "Libdav1d",
            path: "Sources/Libdav1d.xcframework"
        ),
        .binaryTarget(
            name: "Libdovi",
            path: "Sources/Libdovi.xcframework"
        ),
        .binaryTarget(
            name: "Libeffcee",
            path: "Sources/Libeffcee.xcframework"
        ),
        .binaryTarget(
            name: "Libfreetype",
            path: "Sources/Libfreetype.xcframework"
        ),
        .binaryTarget(
            name: "Libfribidi",
            path: "Sources/Libfribidi.xcframework"
        ),
        .binaryTarget(
            name: "Libglslang",
            path: "Sources/Libglslang.xcframework"
        ),
        .binaryTarget(
            name: "Libgmp",
            path: "Sources/Libgmp.xcframework"
        ),
        .binaryTarget(
            name: "Libgnutls",
            path: "Sources/Libgnutls.xcframework"
        ),
        .binaryTarget(
            name: "Libharfbuzz",
            path: "Sources/Libharfbuzz.xcframework"
        ),
        .binaryTarget(
            name: "Libhogweed",
            path: "Sources/Libhogweed.xcframework"
        ),
        .binaryTarget(
            name: "Liblcms2",
            path: "Sources/Liblcms2.xcframework"
        ),
        .binaryTarget(
            name: "Libluajit",
            path: "Sources/Libluajit.xcframework"
        ),
        .binaryTarget(
            name: "Libmpv",
            path: "Sources/Libmpv.xcframework"
        ),
        .binaryTarget(
            name: "Libnettle",
            path: "Sources/Libnettle.xcframework"
        ),
        .binaryTarget(
            name: "Libnfs",
            path: "Sources/Libnfs.xcframework"
        ),
        .binaryTarget(
            name: "Libplacebo",
            path: "Sources/Libplacebo.xcframework"
        ),
        .binaryTarget(
            name: "Libpng",
            path: "Sources/Libpng.xcframework"
        ),
        .binaryTarget(
            name: "Libreadline",
            path: "Sources/Libreadline.xcframework"
        ),
        .binaryTarget(
            name: "Libshaderc",
            path: "Sources/Libshaderc.xcframework"
        ),
        .binaryTarget(
            name: "Libsmbclient",
            path: "Sources/Libsmbclient.xcframework"
        ),
        .binaryTarget(
            name: "Libssl",
            path: "Sources/Libssl.xcframework"
        ),
        .binaryTarget(
            name: "Libswresample",
            path: "Sources/Libswresample.xcframework"
        ),
        .binaryTarget(
            name: "Libswscale",
            path: "Sources/Libswscale.xcframework"
        ),
        .binaryTarget(
            name: "Libuchardet",
            path: "Sources/Libuchardet.xcframework"
        ),
        .binaryTarget(
            name: "MoltenVK",
            path: "Sources/MoltenVK.xcframework"
        )
//        .binaryTarget(
//            name: "Libsrt",
//            path: "Sources/Libsrt.xcframework"
//        ),
    ]
)
