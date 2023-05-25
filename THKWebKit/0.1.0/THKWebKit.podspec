#
# Be sure to run `pod lib lint THKWebKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKWebKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKWebKit.'

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
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.static_framework = true
  
  s.prefix_header_contents = '#import "Masonry.h"','#import <YYImage/YYImage.h>', '#import <THKWebKit/THKWeb_BaseDefine.h>'


  s.libraries = ['z', 'resolv.9']

  s.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/*.h'
  s.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/*'
  s.subspec 'ViewModel' do |viewmodel|
      viewmodel.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/ViewModel/*.h'
      viewmodel.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/ViewModel/*'
  end
  s.subspec 'Network' do |network|
      network.subspec 'Logout' do |logout|
          logout.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/Logout/*.h'
          logout.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/Logout/*'
      end
      network.subspec 'LogUploadManager' do |loguploadmanager|
          loguploadmanager.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/LogUploadManager/*.h'
          loguploadmanager.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/LogUploadManager/*'
          loguploadmanager.subspec 'LogUpload' do |logupload|
              logupload.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/LogUploadManager/LogUpload/*.h'
              logupload.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/LogUploadManager/LogUpload/*'
          end
      end
      network.subspec 'QueryMobile' do |querymobile|
          querymobile.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/QueryMobile/*.h'
          querymobile.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/QueryMobile/*'
      end
      network.subspec 'WechatOpenId' do |wechatopenid|
          wechatopenid.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/WechatOpenId/*.h'
          wechatopenid.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Network/WechatOpenId/*'
      end
  end
  s.subspec 'Other' do |other|
      other.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/*.h'
      other.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/*'
      other.subspec 'Pay' do |pay|
          pay.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/Pay/*.h'
          pay.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/Pay/*'
      end
      other.subspec 'Authorization' do |authorization|
          authorization.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/Authorization/*.h'
          authorization.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Other/Authorization/*'
      end
  end
  s.subspec 'Utils' do |utils|
      utils.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Utils/*.h'
      utils.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/Utils/*'
  end
  s.subspec 'TWebAction' do |twebaction|
      twebaction.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/*.h'
      twebaction.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/*'
      twebaction.subspec 'THKWebAction' do |thkwebaction|
          thkwebaction.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/*.h'
          thkwebaction.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/*'
          thkwebaction.subspec 'UI' do |ui|
              ui.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/UI/*.h'
              ui.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/UI/*'
          end
          thkwebaction.subspec 'Biz' do |biz|
              biz.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Biz/*.h'
              biz.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Biz/*'
          end
          thkwebaction.subspec 'Public' do |public|
              public.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Public/*.h'
              public.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Public/*'
          end
          thkwebaction.subspec 'Device' do |device|
              device.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Device/*.h'
              device.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Device/*'
          end
          thkwebaction.subspec 'Min' do |min|
              min.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Min/*.h'
              min.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Min/*'
          end
          thkwebaction.subspec 'Base' do |base|
              base.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Base/*.h'
              base.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/THKWebAction/Base/*'
          end
      end
      twebaction.subspec 'TWebActionConfig' do |twebactionconfig|
          twebactionconfig.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/TWebActionConfig/*.h'
          twebactionconfig.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/TWebAction/TWebActionConfig/*'
      end
  end
  s.subspec 'ViewController' do |viewcontroller|
      viewcontroller.public_header_files = 'BaseBusinessKit/THKWebKit/THKWebKit/Classes/ViewController/*.h'
      viewcontroller.source_files =  'BaseBusinessKit/THKWebKit/THKWebKit/Classes/ViewController/*'
  end
  
  s.dependency 'THKBaseKit', '0.1.0'
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'THKShareKit', '0.1.0'
  s.dependency 'THKHTTPDNSKit'
  s.dependency 'THKInteractiveKit'
  s.dependency 'KKJSBridge/AjaxProtocolHook','1.3.9'
  s.dependency 'GTMBase64', '1.0.1'
  #s.dependency 'TSNSLib', '4.2.0'
  s.dependency 'SSZipArchive', '2.2.3'
  s.dependency 'TWebActionManager'
  s.dependency 'THKBaseUIKit'
  s.dependency 'THKCustomToolKit'
  
end
