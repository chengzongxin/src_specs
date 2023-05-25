#
# Be sure to run `pod lib lint TNetWorkingSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TNetWorkingSwift'
  s.version          = '1.3.1'
  s.summary          = '利用Alamofire进行再度封装网络库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                      利用Alamofire进行再度封装，以适合日常需求
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TSwiftRepo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'anyeler.zhang' => 'anyeler.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosbaselibraries/TSwiftRepo.git', :tag => '0.2.1' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.module_name      = 'TNetWorking'
  s.platform         = :ios, '8.0'
  # s.ios.deployment_target = '8.0'

  s.source_files = 'TNetWorkingSwift/TNetWorkingSwift/Classes/*.swift'
  s.requires_arc = true
  
  # s.resource_bundles = {
  #   'TNetWorkingSwift' => ['TNetWorkingSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  
s.dependency "Alamofire"#, "4.7.2"
s.dependency "HandyJSON"#, "4.1.1"

  s.subspec 'Core' do |ba|
    ba.source_files = 'TNetWorkingSwift/TNetWorkingSwift/Classes/Core/*.swift'
  end

end
