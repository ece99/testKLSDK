#
# Be sure to run `pod lib lint TestKandyLinkSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestKandyLinkSDK'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TestKandyLinkSDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ece99/TestKandyLinkSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ece99' => 'eceserver.ayvaz@gmail.com' }
  s.source           = { :git => 'https://github.com/ece99/testKLSDK.git', :tag => '0.1.0' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  
  s.dependency  'KandyWebRTC'
  s.library = ['c++','icucore','z']
  s.ios.frameworks = 'AVFounndation','GLKit','VideoToolbox','AudioToolbox','PushKit', 'SystemConfiguration'
  s.vendored_frameworks = ['MobileSDK.xcframework']
  
  s.pod_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'OTHER_LDFLAGS' => '$(inherited) -framework WebRTC -ObjC',
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }
  # s.resource_bundles = {
  #   'TestKandyLinkSDK' => ['TestKandyLinkSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
