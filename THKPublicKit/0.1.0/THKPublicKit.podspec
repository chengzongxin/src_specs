#
# Be sure to run `pod lib lint THKPublicKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKPublicKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKPublicKit.'

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
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/*'
  s.public_header_files =  'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/*.h'
  s.resource_bundles = {
     'THKPublicKit' => ['BaseBusinessKit/THKPublicKit/README.md']
  }
  
  s.subspec 'Config' do |ss|
    ss.public_header_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/*.h'
    ss.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/*'
    
    ss.subspec 'CommonObjects' do |sss|
      sss.public_header_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/CommonObjects/*.h'
      sss.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/CommonObjects/*'
    end
    
    ss.subspec 'UserModel' do |sss|
      sss.public_header_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/UserModel/*.h'
      sss.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/UserModel/*'
    end
    
    ss.subspec 'RouterConfig' do |sss|
      sss.public_header_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/RouterConfig/*.h'
      sss.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/RouterConfig/*'
    end
    
    ss.subspec 'CellDataModel' do |sss|
      sss.public_header_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/CellDataModel/*.h'
      sss.source_files = 'BaseBusinessKit/THKPublicKit/THKPublicKit/Classes/Config/CellDataModel/*'
    end
    
  end
  # s.resource_bundles = {
  #   'THKPublicKit' => ['THKPublicKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'MJExtension', '3.2.1'
  s.dependency 'TUUIDGenerator', '0.2.0'
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'TRouter', '1.0.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
#  s.dependency 'THKRequestKit'
   
end
