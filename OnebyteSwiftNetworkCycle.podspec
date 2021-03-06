#
# Be sure to run `pod lib lint OnebyteSwiftNetworkCycle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OnebyteSwiftNetworkCycle'
  s.version          = '0.2.0'
  s.summary          = 'Onebyte pod for integrating and performing Network operations for Swift based projects.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'It contains Managers, Operations and Operation queues to perform RESTful APIs operations used in Swift based applications developed in Onebyte LLC. All the operations are executed using Alamofire SDK.'

  s.homepage         = 'https://github.com/hammy-dev-world/OnebyteSwiftNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Humayun Sohail' => 'humayun4206@gmail.com' }
  s.source           = { :git => 'https://github.com/hammy-dev-world/OnebyteSwiftNetwork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OnebyteSwiftNetworkCycle/Classes/**/*'
  
#s.resource_bundles = {
#   'OnebyteSwiftNetworkCycle' => ['OnebyteSwiftNetworkCycle/DevelopmentPods/*']
# }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  #s.frameworks = 'Alamofire'
  s.dependency 'Alamofire', '~> 4.0'
end
