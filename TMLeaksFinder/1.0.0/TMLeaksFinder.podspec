#
# Be sure to run `pod lib lint MLeaksFinder.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TMLeaksFinder"
  s.version          = "1.0.0"
  s.summary          = "封装MLeaksFinder,在开发模式寻找内存泄露"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

#  s.description      = <<-DESC
#TODO: Add long description of the pod here.
#                       DESC

  s.homepage         = "https://github.com/Zepo/MLeaksFinder"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Zeposhe" => "zeposhe@163.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bc12b86d"}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TMLeaksFinder/MLeaksFinder/**/*'
  
  # s.resource_bundles = {
  #   'MLeaksFinder' => ['MLeaksFinder/Assets/*.png']
  # }

  s.public_header_files = 'TMLeaksFinder/MLeaksFinder/MLeaksFinder.h', 'TMLeaksFinder/MLeaksFinder/NSObject+MemoryLeak.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'FBRetainCycleDetector'
end
