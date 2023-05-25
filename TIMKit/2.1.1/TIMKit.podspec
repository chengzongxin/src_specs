#
# Be sure to run `pod lib lint TIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TIMKit'
  s.version          = '2.1.1'
  s.summary          = 'A short description of TIMKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/tubroker/timkit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'elvis' => 'elvis.peng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/tubroker/timkit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.static_framework = true
  
  s.subspec 'RongIM' do |kit|
    #源码下载地址 https://downloads.rongcloud.cn/iOS_RongIMKit_v2.10.4_Src.zip
    kit.subspec 'RongIMKit' do |im|
      im.resources = ['RongIMKit/IMKit/Resource/RongCloud.bundle', 'RongIMKit/IMKit/Resource/en.lproj', 'RongIMKit/IMKit/Resource/zh-Hans.lproj','RongIMKit/IMKit/Resource/Emoji.plist', 'RongIMKit/IMKit/Resource/RCColor.plist']
      im.vendored_frameworks = 'RongIMKit/Sight/RongSight.framework'
      im.source_files = 'RongIMKit/IMKit/Classes/**/*.{m,h}'
      im.prefix_header_file = 'RongIMKit/IMKit/Classes/RCPrefixHeader.pch'
      im.frameworks = [
      'AssetsLibrary',
      'MapKit',
      'ImageIO',
      'CoreLocation',
      'SystemConfiguration',
      'QuartzCore',
      'OpenGLES',
      'CoreVideo',
      'CoreTelephony',
      'CoreMedia',
      'CoreAudio',
      'CFNetwork',
      'AudioToolbox',
      'AVFoundation',
      'UIKit',
      'CoreGraphics',
      'Photos',
      'SafariServices'
      ]
      
      im.dependency 'RongCloudIM/IMLib', '2.10.4'
    end
    
    kit.subspec 'RongCallKit' do |callKit|
      callKit.source_files = 'RongCallKit/**/*.{m,h,mm}'
      callKit.dependency 'RongCloudRTC/RongCallLib', '2.10.4'
    end
    
    kit.subspec 'ExtensionKit' do |ext|
      ext.vendored_libraries = 'RongIMKit/ExtensionKit/libRongExtensionKit.a'
      ext.source_files = 'RongIMKit/ExtensionKit/include/*.h'
    end
  end
  
  s.subspec 'IMKit' do |kit|
    
    kit.source_files = 'TIMKit/Classes/*.{h,m}'
    
    kit.resources = ['TIMKit/Assets/**/*.png','TIMKit/Classes/**/*.xib']
    
    subspecs = ['Chat', 'Common', 'Contacts', 'GroupInfoDetail', 'IM']
    
    subspecs.each do |sname|
      kit.subspec sname do |ss|
        ss.source_files = 'TIMKit/Classes/' + sname + '/**/*.{h,m}'
      end
    end
    
    kit.frameworks = 'UIKit'
    
    kit.dependency 'TIMKit/RongIM'
    
    kit.dependency 'AFNetworking', '4.0.1'
    kit.dependency 'MJExtension', '3.2.1'
    kit.dependency 'YYWebImage', '1.0.5'
    kit.dependency 'Masonry', '1.1.0'
    kit.dependency 'MBProgressHUD', '~> 0.9.1'
    kit.dependency 'FMDB'#, '2.4'
    kit.dependency 'SPAlertController', '2.5.2'
    
    kit.dependency 'AMap3DMap'#, '7.1.0'
    kit.dependency 'AMapSearch'#, '7.1.0'
    kit.dependency 'AMapLocation'#, '2.6.4'
    kit.dependency 'MGSwipeTableCell', '~> 1.6.11'
    kit.dependency 'GKPhotoBrowser/YY', '~> 2.0.0'

  end
  
end
