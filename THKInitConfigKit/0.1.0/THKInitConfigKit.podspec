#
# Be sure to run `pod lib lint THKInitConfigKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKInitConfigKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKInitConfigKit.'

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
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/*.h'

  s.resource_bundles = {
     'THKInitConfigKit' => ['BaseBusinessKit/THKInitConfigKit/README.md']
  }

  s.subspec 'Request' do |request|
    request.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/Request/**/*.h'
    request.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/Request/**/*'
    request.dependency 'THKCustomToolKit'
    request.dependency 'THKRealTimeDataKit'
  end
  
  s.subspec 'Applink' do |applink|
    applink.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/Applink/*.h'
    applink.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/Applink/*'
    applink.dependency 'TRouter'
  end

  s.subspec 'AwakeReportManager' do |awakeReportManager|
   awakeReportManager.dependency 'TMUIExtensions'
   awakeReportManager.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/AwakeReportManager/*.h'
   awakeReportManager.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/AwakeReportManager/*'
  end
  
  s.subspec 'ASAManager' do |asa|
    asa.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/ASAManager/*.h'
    asa.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/ASAManager/*'
  end
  
  s.subspec 'NewInstallPush' do |install|
    install.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/NewInstallPush/*.h'
    install.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/NewInstallPush/*'
  end

  s.subspec 'UniversalLink' do |link|
    link.public_header_files = 'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/UniversalLink/*.h'
    link.source_files =  'BaseBusinessKit/THKInitConfigKit/THKInitConfigKit/Classes/UniversalLink/*'
  end


  s.prefix_header_contents = '#import <ReactiveObjC/ReactiveObjC.h>'
  
  
 s.dependency 'THKCustomViewKit' , '0.1.0'
 s.dependency 'THKSafeKit', '0.1.0'
 s.dependency 'Godeye', '1.1.3'
 s.dependency 'THKBaseNetwork', '0.3.1'
 s.dependency 'THKBusinessToolKit', '0.1.0'
 s.dependency 'TMToast', '1.0.0'
 s.dependency 'THKRouterKit', '0.1.0'
end
