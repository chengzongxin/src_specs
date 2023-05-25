#
# Be sure to run `pod lib lint SJBRefresh.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJBRefresh'
  s.version          = '0.1.3'
  s.summary          = '设计本使用的刷新控件，基于 KafkaRefresh 改造的。'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/sjbrefresh'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'joakim.liu' => 'joakim.liu@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/sjbrefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.public_header_files = 'SJBRefresh/Classes/SJBRefresh.h'
  s.source_files = 'SJBRefresh/Classes/SJBRefresh.h'
  s.resource     = 'SJBRefresh/Assets/**/*'
  s.dependency 'YYImage', '~> 1.0.4'

  s.subspec 'Category' do |ss|
      ss.source_files = "SJBRefresh/Classes/Category/**/*"
      ss.public_header_files = "SJBRefresh/Classes/Category/*.{h}"
  end
  
  s.subspec 'Core' do |ss|
      ss.source_files = "SJBRefresh/Classes/Core/**/*"
      ss.public_header_files = "SJBRefresh/Classes/Core/*.{h}"
      ss.dependency 'SJBRefresh/Category'
  end
  
  s.subspec 'Configuration' do |ss|
      ss.source_files = "SJBRefresh/Classes/Configuration/**/*"
      ss.public_header_files = "SJBRefresh/Classes/Configuration/**/*.{h}"
      ss.dependency 'SJBRefresh/UIKit/HeadKit'
      ss.dependency 'SJBRefresh/UIKit/FootKit'
  end
  
  s.subspec 'Default' do |ss|
      ss.source_files = "SJBRefresh/Classes/Default/**/*"
      ss.public_header_files = "SJBRefresh/Classes/Default/**/*.{h}"
      ss.dependency 'SJBRefresh/Style'
  end
  
  s.subspec 'Style' do |ss|
      ss.source_files = "SJBRefresh/Classes/Style/**/*"
      ss.public_header_files = "SJBRefresh/Classes/Style/**/*.{h}"
  end
  
  s.subspec 'SJB' do |ss|
      ss.source_files = "SJBRefresh/Classes/SJB/**/*"
      ss.public_header_files = "SJBRefresh/Classes/SJB/**/*.{h}"
      ss.dependency 'SJBRefresh/UIKit/HeadKit'
      ss.dependency 'SJBRefresh/UIKit/FootKit'
  end
  
  s.subspec 'UIKit' do |ss|
      
      ss.subspec 'HeadKit' do |sss|
          sss.source_files = "SJBRefresh/Classes/UIKit/HeadKit/**/*"
          sss.public_header_files = "SJBRefresh/Classes/UIKit/HeadKit/*.{h}"
          sss.dependency 'SJBRefresh/UIKit/LayerKit'
          sss.dependency 'SJBRefresh/Category'
          sss.dependency 'SJBRefresh/Core'
          sss.dependency 'SJBRefresh/Default'
          sss.dependency 'SJBRefresh/Style'
      end
      
      ss.subspec 'FootKit' do |sss|
          sss.source_files = "SJBRefresh/Classes/UIKit/FootKit/**/*"
          sss.public_header_files = "SJBRefresh/Classes/UIKit/FootKit/*.{h}"
          sss.dependency 'SJBRefresh/UIKit/LayerKit'
          sss.dependency 'SJBRefresh/Category'
          sss.dependency 'SJBRefresh/Core'
          sss.dependency 'SJBRefresh/Default'
          sss.dependency 'SJBRefresh/Style'
      end
      
      ss.subspec 'LayerKit' do |sss|
          sss.source_files = "SJBRefresh/Classes/UIKit/LayerKit/**/*"
          sss.public_header_files = "SJBRefresh/Classes/UIKit/LayerKit/*.{h}"
          sss.dependency 'SJBRefresh/Category'
          sss.dependency 'SJBRefresh/Default'
      end
  end
  
end
