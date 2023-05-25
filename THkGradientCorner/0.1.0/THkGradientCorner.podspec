#
# Be sure to run `pod lib lint THkGradientCorner.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THkGradientCorner'
  s.version          = '0.1.0'
  s.summary          = '高性能圆角生成器，同时支持背景带渐变色的圆角'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :tag => "0.9.96" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'THkGradientCorner/Classes/**/*'
  
  # s.resource_bundles = {
  #   'THkGradientCorner' => ['THkGradientCorner/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
