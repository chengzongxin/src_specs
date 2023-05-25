#
# Be sure to run `pod lib lint THKBaseNetwork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKBaseNetwork'
  s.version          = '0.3.1'
  s.summary          = '1652024:土巴兔App网络请求基类; 83b4cc0:apigwc2域名改成apigw'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
公参中的appName从外部传入的参数中获取，而不是写死"tbt-app"
                       DESC

  s.homepage         = 'http://repo.we.com/ios/tbtrepo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Aaron' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '31938af' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'THKBaseNetwork/Classes/*.h'
  
  s.subspec 'Request' do |request|
    request.source_files = 'THKBaseNetwork/Classes/Request/**/*'
  end
  
  s.subspec 'Manager' do |manager|
    manager.source_files = 'THKBaseNetwork/Classes/Manager/**/*'
  end
  
  s.subspec 'Extension' do |extension|
    extension.source_files = 'THKBaseNetwork/Classes/Extension/**/*'
  end
  
  s.subspec 'Response' do |response|
    response.source_files = 'THKBaseNetwork/Classes/Response/**/*'
  end
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'TBTNetwork', '0.1.9'
  s.dependency 'MJExtension', '3.2.1'
  s.dependency 'ReactiveObjC', '3.1.1'
   
end
