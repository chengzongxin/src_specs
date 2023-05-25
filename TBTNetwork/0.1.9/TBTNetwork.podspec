#
# Be sure to run `pod lib lint TBTNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTNetwork'
  s.version          = '0.1.9'
  s.summary          = '消除警告.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/tbtrepo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aaron' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => 'bd9d3d85' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TBTNetwork/Classes/**/*.{h,m}'
  s.public_header_files = 'TBTNetwork/Classes/**/*.h'
  # s.resource_bundles = {
  #   'TBTNetwork' => ['TBTNetwork/Assets/*.png']
  # }

  
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '4.0.1'
end
