#
# Be sure to run `pod lib lint THKVerifyCodeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKVerifyCodeKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKVerifyCodeKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKVerifyCodeKit/THKVerifyCodeKit/Classes/**/*'
  s.public_header_files = 'BaseBusinessKit/THKVerifyCodeKit/THKVerifyCodeKit/Classes/**/*.h'
  s.resource_bundles = {
     'THKVerifyCodeKit' => ['BaseBusinessKit/THKVerifyCodeKit/README.md']
   }
  
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKBaseUIKit', '0.1.0'
  s.dependency 'THKBusinessToolKit/TRsaTool', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
  s.dependency 'THKCustomViewKit/TBTCustomView', '0.1.0'
  s.dependency 'TMUICore', '2.0.25'
  s.dependency 'TYYKit', '0.0.4'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'THKRealTimeDataKit', '0.1.0'
end
