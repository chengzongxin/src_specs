#
# Be sure to run `pod lib lint THKRouterKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKRouterKit'
  s.version          = '0.1.0'
  s.summary          = '路由中转'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Router/THKRouterKit/THKRouterKit/Classes/**/*'
  s.public_header_files = 'Router/THKRouterKit/THKRouterKit/Classes/**/*.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['Router/THKRouterKit/README.md']
  end

  s.dependency 'TRouter', '1.0.0'
  s.dependency 'THKModuleService', '0.1.0'
  s.dependency 'THKMacroKit', '0.1.0'
  s.dependency 'THKRealTimeDataKit', '0.1.0'


end
