#
# Be sure to run `pod lib lint THKNetworkKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKNetworkKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKNetworkKit.'

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
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.static_framework = true

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKNetworkKit/README.md']
  end

  s.source_files = 'BaseKit/THKNetworkKit/THKNetworkKit/Classes/*'

  s.public_header_files = 'BaseKit/THKNetworkKit/THKNetworkKit/Classes/*.h'

  s.subspec 'TRPerformanceMonitor' do |monitor|
    monitor.public_header_files = 'BaseKit/THKNetworkKit/THKNetworkKit/Classes/TRPerformanceMonitor/*.h'
    monitor.source_files = 'BaseKit/THKNetworkKit/THKNetworkKit/Classes/TRPerformanceMonitor/*'
  end

  s.dependency 'THKBaseNetwork', '~>0.3.0'
  s.dependency 'TMToast'
  s.dependency 'THKCustomToolKit/HttpLogModel'
  s.dependency 'TUUIDGenerator'
  s.dependency 'Godeye', '1.1.3'

end
