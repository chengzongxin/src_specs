#
# Be sure to run `pod lib lint TRouter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TRouter'
  s.version          = '0.1.9'
  s.summary          = 'A short description of TRouter.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  增加了是否需要登录的判断，对url中的needLogin字段进行解析
                       DESC

  s.homepage         = 'http://repo.we.com/tubroker/TRouter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'elvis' => 'elvis.peng@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/tubroker/trouter.git', :commit => 'dc816cd' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TRouter/**/*.{h,m}'
  s.frameworks = 'UIKit'

end
