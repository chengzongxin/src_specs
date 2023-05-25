#
# Be sure to run `pod lib lint TObject.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TObject'
  s.version          = '0.0.4'
  s.summary          = 'A short description of TObject.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "重新整理原TObject类并重新调整相关库依赖逻辑及原相关实现逻辑"

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '8cf804b0'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.2'

  s.source_files = 'TObject/Pod/Classes/**/*.{h,m}'  
  s.public_header_files = 'TObject/Pod/Classes/**/*.h'
  s.prefix_header_contents = '#import "TObjectKit.h"'
  s.frameworks = 'Foundation'
  s.dependency  'MJExtension', '3.2.1'
  s.dependency  'TMUIKit', '1.1.12'

end
