#
# Be sure to run `pod lib lint TBTOldNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTOldNetwork'
  s.version          = '0.1.2'
  s.summary          = 'A short description of TBTOldNetwork.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aaron.xun/TBTOldNetwork'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => "c70a777" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TBTOldNetwork/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TBTOldNetwork' => ['TBTOldNetwork/Assets/*.png']
  # }

  s.public_header_files = 'TBTOldNetwork/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'AFNetworking', '~> 2.6.3'
   s.dependency 'ReactiveObjC', '~> 3.1.1'
   s.dependency 'MJExtension', '~> 3.2.1'
   s.dependency 'THKCommonRequestExtensionKit', '0.0.1'
   s.dependency 'TBasicLib'
   s.dependency 'TBTLog'
   
end
