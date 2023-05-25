#
# Be sure to run `pod lib lint THKCustomPageViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCustomPageViewController'
  s.version          = '0.0.6'
  s.summary          = 'A short description of THKCustomPageViewController.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
自定义的类似UIPageViewController滑动切换相类似的功能的封装控件，但此控件支持横向或纵向滑动切换页面，相关vc事件的触发已尽量与系统级的转场处理的触发逻辑保持一致。
                       DESC

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nigel.ning' => 'nigel.ning@corp.to8to.com' }
  #s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '4df91ef0'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'THKCustomPageViewController/Pod/Classes/**/*'
  
  # s.resource_bundles = {
  #   'THKCustomPageViewController' => ['THKCustomPageViewController/Pod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'

end
