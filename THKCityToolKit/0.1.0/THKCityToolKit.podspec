#
# Be sure to run `pod lib lint THKCityToolKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCityToolKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKCityToolKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.public_header_files = 'BaseBusinessKit/THKCityToolKit/THKCityToolKit/Classes/*.h'
  s.source_files = 'BaseBusinessKit/THKCityToolKit/THKCityToolKit/Classes/*'
  s.resource_bundles = {
      'THKCityToolKit' => ['BaseBusinessKit/THKCityToolKit/README.md']
    }
  s.dependency 'THKConfigFileManagerKit','0.1.0'
  s.dependency 'THKLocationManager','0.1.0'
  
end
