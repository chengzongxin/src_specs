#
# Be sure to run `pod lib lint TPayService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TPayService'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TPayService.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://www.max1ao.com'
  s.version          = '0.1.0'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Poly.ma' => 'poly.ma@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :tag => '0.5.10' }

  s.ios.deployment_target = '8.0'

  s.source_files = "#{s.name}/Classes/**/*"
  s.public_header_files = "#{s.name}/Classes/**/*.h"

  s.preserve_paths = [
    "#{s.name}/Classes/**/*",
  ] 
  
  s.frameworks = [
    'SystemConfiguration',
    'CoreTelephony',
    'QuartzCore',
    'CoreText',
    'CoreGraphics',
    'UIKit',
    'Foundation',
    'CFNetwork',
    'CoreMotion',
]

s.libraries = [
    'c++',
    'z',
]

s.vendored_frameworks = [
    "#{s.name}/Third/AlipaySDK.framework",
    "#{s.name}/Third/WeChatSDK.framework"
]

s.resources = [
    "#{s.name}/Third/AlipaySDK.bundle"
]

s.pod_target_xcconfig = {
    "ENABLE_BITCODE" => "NO"
}
end
