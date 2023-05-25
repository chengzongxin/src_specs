#
# Be sure to run `pod lib lint THKConfigurationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKConfigurationKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKConfigurationKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ben.gan/THKConfigurationKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/*.h'
  s.resource_bundles = {
    'THKConfigurationKit' => ['BaseBusinessKit/THKConfigurationKit/README.md']
  }
  s.subspec 'Configuration' do |config|
    config.public_header_files = 'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/Configuration/*.h'
    config.source_files =  'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/Configuration/*.{h,m}'
    config.resource_bundles = {
      'THKConfigurationKit' => ['BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/Configuration/V_Identity_Config.json']
    }
  end
  
  s.subspec 'AppLaunchConfig' do |applaunch|
    applaunch.public_header_files = 'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/AppLaunchConfig/*.h'
    applaunch.source_files =  'BaseBusinessKit/THKConfigurationKit/THKConfigurationKit/Classes/AppLaunchConfig/*'
  end
  
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'THKBusinessToolKit', '0.1.0'
  s.dependency 'MJExtension', '3.2.1'
  s.dependency 'TUUIDGenerator', '0.2.0'
  s.dependency 'THKCityToolKit', '0.1.0'
  s.dependency 'THKCustomViewKit', '0.1.0'
end
