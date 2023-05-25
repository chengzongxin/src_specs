#
# Be sure to run `pod lib lint THKMacroKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKMacroKit'
  s.version          = '0.1.0'
  s.summary          = '宏定义库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "3a9472767b232ae22032ac0a8a8978b683dae71b" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.frameworks = 'Foundation', 'UIKit', 'CoreGraphics'

  s.source_files = 'BaseKit/THKMacroKit/THKMacroKit/Classes/**/*'

  s.public_header_files = 'BaseKit/THKMacroKit/THKMacroKit/Classes/*.h'

  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKMacroKit/README.md']
  end
  
end
