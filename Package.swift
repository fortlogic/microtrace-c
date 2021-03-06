// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "µtraceT",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
//    .library(
//      name: "µtraceT",
//      targets: ["µtraceT"]),
    .library(
      name: "CTrace",
      targets: ["CTrace"])
  ],
  dependencies: [
    // Dependencies declare other packages that this package depends on.
    // .package(url: /* package url */, from: "1.0.0"),
    .package(url: "https://github.com/typelift/SwiftCheck.git", from: "0.11.0")
  ],
  targets: [
    // Targets are the basic building blocks of a package. A target can define a module or a test suite.
    // Targets can depend on other targets in this package, and on products in packages which this package depends on.
//    .target(
//      name: "µtraceT",
//      dependencies: []),
//    .testTarget(
//      name: "µtraceTTests",
//      dependencies: ["µtraceT"]
//    ),
    .target(
      name: "CTrace"
    ),
    .testTarget(
      name: "CTraceTests",
      dependencies: ["CTrace", "SwiftCheck"]
    )
  ]
)
