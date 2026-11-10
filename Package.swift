// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_CroMax",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_CroMax",
            targets: ["YF_CroMax_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_CroMax_Target",
            dependencies: [
                "YF_CroMax_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_CroMax_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/cromax/1.0.1/CroMaxSDK.xcframework.zip",
            checksum: "616e038428d13f560c3f997a4e8becf40b585cd047efa9b6aadf7d961cd115a8"
        )
    ]
)