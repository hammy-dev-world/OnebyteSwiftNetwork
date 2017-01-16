# OnebyteSwiftNetworkCycle

[![CI Status](http://img.shields.io/travis/eHumayun Sohail/OnebyteSwiftNetworkCycle.svg?style=flat)](https://travis-ci.org/eHumayun Sohail/OnebyteSwiftNetworkCycle)
[![Version](https://img.shields.io/cocoapods/v/OnebyteSwiftNetworkCycle.svg?style=flat)](http://cocoapods.org/pods/OnebyteSwiftNetworkCycle)
[![License](https://img.shields.io/cocoapods/l/OnebyteSwiftNetworkCycle.svg?style=flat)](http://cocoapods.org/pods/OnebyteSwiftNetworkCycle)
[![Platform](https://img.shields.io/cocoapods/p/OnebyteSwiftNetworkCycle.svg?style=flat)](http://cocoapods.org/pods/OnebyteSwiftNetworkCycle)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

OnebyteSwiftNetworkCycle is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
  pod 'OnebyteSwiftNetworkCycle', :git => 'https://github.com/hammy-dev-world/OnebyteSwiftNetwork.git'

```

##Usage 

1) Import the module in your development hierarchy,

```ruby
import OnebyteSwiftNetworkCycle

```
2) Create a struct for ```AppNetworkConstants``` that contains base url, end points, status codes and error codes.

3) Create a class for ```AppNetworkManager``` to handle requests as per requirements.

4) Create separate operations by subclassing ```OnebyteNetworkOperationBase``` in order to initiate requests.

## Author

Humayun Sohail (Senior iOS Engineer, Onebyte LLC), humayun@onebyte.biz

## License

OnebyteSwiftNetworkCycle is available under the MIT license. See the LICENSE file for more info.
