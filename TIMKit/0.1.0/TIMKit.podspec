#
# Be sure to run `pod lib lint TIMKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TIMKit'
  s.version          = '0.1.0'
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

  s.source_files = 'TIMKit/Classes/**/*.{h,m}'
  
  s.resources = ['TIMKit/Assets/**/*.png','TIMKit/Classes/**/*.xib']
  
  # s.resource_bundles = {
  #   'TIMKit' => ['TIMKit/Assets/*.png']
  # }
  
  s.static_framework = true

  s.frameworks = 'UIKit'
  s.dependency 'AFNetworking', '~> 2.6.3'
  s.dependency 'MJExtension', '3.0.15.1'
  s.dependency 'YYWebImage'
  s.dependency 'Masonry'
  s.dependency 'MBProgressHUD', '~> 0.9.1'
  s.dependency 'TRongCloudIM', '2.9.11'
#  s.dependency 'RongCloudIM/IMLib'
#  s.dependency 'RongCloudIM/IMKit'

    
end
