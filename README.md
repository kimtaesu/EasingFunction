<p align="center">
   <img width="300" src="https://github.com/kimtaesu/Resources/blob/master/logo/v1/v1.png" alt="EasingFunction Logo">
</p>

<p align="center">
   <a href="https://developer.apple.com/swift/">
      <img src="https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat" alt="Swift 5.0">
   </a>
   <a href="http://cocoapods.org/pods/EasingFunction">
      <img src="https://img.shields.io/cocoapods/v/EasingFunction.svg?style=flat" alt="Version">
   </a>
   <a href="http://cocoapods.org/pods/EasingFunction">
      <img src="https://img.shields.io/cocoapods/p/EasingFunction.svg?style=flat" alt="Platform">
   </a>
   <a href="https://github.com/Carthage/Carthage">
      <img src="https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat" alt="Carthage Compatible">
   </a>
</p>


EasingFunction is a beatuful UIPageControl

<img width="200" src="https://github.com/kimtaesu/Resources/blob/master/EasingFunction/Demo1.gif" alt="EasingFunction Logo">

## Requirements
* iOS 10.0+
* Xcode 10.2+
* Swift 5+

## Features

- [x] Supporting The [RxSwift](https://github.com/ReactiveX/RxSwift)
- [x] Timing issue for fast scrolling
- [x] To customize UIBeizerPath and LayoutArranger


## Installation

### CocoaPods

EasingFunction is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```bash
pod 'EasingFunction'
```

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

To integrate EasingFunction into your Xcode project using Carthage, specify it in your `Cartfile`:

```ogdl
github "kimtaesu/EasingFunction"
```

Run `carthage update` to build the framework and drag the built `EasingFunction.framework` into your Xcode project. 

On your application targets’ “Build Phases” settings tab, click the “+” icon and choose “New Run Script Phase” and add the Framework path as mentioned in [Carthage Getting started Step 4, 5 and 6](https://github.com/Carthage/Carthage/blob/master/README.md#if-youre-building-for-ios-tvos-or-watchos)

### Manually

* Open up Terminal, `cd` into your top-level project directory, and run the following command
```
pod install --repo-update
open EasingFunction.xcworkspace
```
 

## Usage


## Contributing
Contributions are very welcome 🙌

## License
EasingFunction is released under the MIT license. See LICENSE for details.
