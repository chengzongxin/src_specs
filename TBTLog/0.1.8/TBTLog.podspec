#
# Be sure to run `pod lib lint TBTLog.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBTLog'
  s.version          = '0.1.8'
  s.summary          = '移除TXLogHelper文件，放到TBTRadar中'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aaron.xun/TBTLog'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aaron.xun' => 'aaron.xun@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '89586ac' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TBTLog/Classes/**/*.{h,m,mm}'
  s.frameworks = ['SystemConfiguration', 'CoreTelephony']
  s.libraries = ['c++']
  s.vendored_frameworks = 'TBTLog/Classes/XLog/mars.framework'

  
  # s.resource_bundles = {
  #   'TBTLog' => ['TBTLog/Assets/*.png']
  # }

  s.public_header_files = 'TBTLog/Classes/**/*.h'
  s.dependency 'YYWebImage', '1.0.5'
  
end