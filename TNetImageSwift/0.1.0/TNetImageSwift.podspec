#
# Be sure to run `pod lib lint TNetImageSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TNetImageSwift'
  s.version          = '0.1.0'
  s.summary          = '利用Kingfisher进行再度封装网络库'

  s.description      = <<-DESC
                      利用Kingfisher进行再度封装，以适合日常需求
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TSwiftRepo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anyeler.zhang' => 'anyeler.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TSwiftRepo.git', :tag => '0.1.2' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.module_name      = 'TNetImage'
  s.platform         = :ios, '8.0'
  # s.ios.deployment_target = '8.0'

  s.source_files = 'TNetImageSwift/TNetImageSwift/Classes/**/*.swift'
  s.requires_arc = true

  s.dependency 'Kingfisher', '3.13.1'

end
