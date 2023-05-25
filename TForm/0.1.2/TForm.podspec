#
# Be sure to run `pod lib lint TForm.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TForm'
  s.version          = '0.1.2'
  s.summary          = 'TForm自定义表单'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TForm自定义表单，提高表单编写效率。
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TForm'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'HQApe' => 'ape.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TForm.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.module_name = 'TForm'

  s.subspec 'XLForm' do |xlf|
    xlf.source_files = 'TForm/Classes/XLForm/XL/**/*.{h,m}'
    xlf.requires_arc = true
    xlf.ios.deployment_target = '8.0'
    xlf.ios.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
    xlf.resource = 'TForm/Classes/XLForm/XLForm.bundle'
  end

  s.subspec 'Form' do |tf|
    tf.source_files = 'TForm/Classes/TForm/**/*.{h,m}'
    tf.resources = 'TForm/Classes/**/*.ttf'
    tf.dependency 'TForm/XLForm'
  end
  
  # s.resource_bundles = {
  #   'TForm' => ['TForm/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
 

end
