#
# Be sure to run `pod lib lint DCSubMateria.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DCSubMateria'
  s.version          = '0.2.0'
  s.summary          = 'A short description of DCSubMateria.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/kris.wang/DCSubMateria'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kris.wang' => 'kris.wang@corp.to8to.com' }
  s.source           = { :git => 'git@repo.we.com:iosfeaturelibraries/dcsubmateria.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'DCSubMateria/Classes/**/*'
  s.resources = 'DCSubMateria/Classes/**/*.xib'


s.dependency 'Kingfisher', '4.7.0'
s.dependency 'PKHUD', '5.0.0'
s.dependency 'AlamofireObjectMapper', '5.0.0'
#s.dependency 'TNetWorkingSwift','1.0.1'
s.dependency 'Reachability', '3.2'
s.dependency 'SnapKit', '~> 4.0.0'
s.dependency 'YYCache', '1.0.4'
s.dependency 'DCCommonRepo'
s.dependency 'TBaseUtilsSwift'
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
