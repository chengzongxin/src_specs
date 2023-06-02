#
# Be sure to run `pod lib lint TIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TIMKit'
  s.version          = '5.0.1'
  s.summary          = '用于业务组件库分支'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
删除图片上传的request
                       DESC

  s.homepage         = 'http://repo.we.com/tubroker/timkit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'elvis' => 'elvis.peng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/tubroker/timkit.git', :commit => 'd9e0a595' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '8.0'
  
  s.static_framework = true
  
  s.dependency 'RongCloudOpenSource/IMKit','5.1.9'
  s.dependency 'RongCloudOpenSource/Sight','5.1.9'
  
  s.subspec 'RongIMExtension' do |ime|
    ime.source_files = 'RongIMExtension/*.{h,m}'

    subspecs = ['Extra', 'IMKit-Extension']

    subspecs.each do |sname|
      ime.subspec sname do |ss|
        ss.source_files = 'RongIMExtension/' + sname + '/**/*.{h,m}'
      end
    end
  end
  
  s.subspec 'IMKit' do |kit|
    
    kit.source_files = 'TIMKit/Classes/*.{h,m}'
    
    kit.resources = ['TIMKit/Assets/**/*.png','TIMKit/Assets/**/*.json','TIMKit/Assets/**/*.bundle','TIMKit/Classes/**/*.xib']
    
    subspecs = ['Chat', 'Common', 'Contacts', 'GroupInfoDetail', 'IM']
    
    subspecs.each do |sname|
      kit.subspec sname do |ss|
        ss.source_files = 'TIMKit/Classes/' + sname + '/**/*.{h,m}'
      end
    end
    
    kit.frameworks = 'UIKit'
    
    kit.dependency 'AFNetworking', '4.0.1'
    kit.dependency 'MJExtension', '3.2.1'
    kit.dependency 'YYWebImage', '1.0.5'
    kit.dependency 'Masonry', '1.1.0'
    kit.dependency 'MBProgressHUD', '0.9.2'
    kit.dependency 'FMDB', '2.7.5'
    kit.dependency 'SPAlertController', '2.5.2'
    
    kit.dependency 'BaiduMapKit','6.3.0'        
    
    kit.dependency 'MGSwipeTableCell', '1.6.11'
    kit.dependency 'GKPhotoBrowser/YY', '~> 2.0.0'
    kit.dependency 'Godeye'

    kit.dependency 'Aspects', '1.4.1'
    kit.dependency 'TMToast'
    kit.dependency 'Lottie', '2.5.3'

  end
  
end
