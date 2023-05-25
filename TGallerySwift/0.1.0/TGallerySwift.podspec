#
# Be sure to run `pod lib lint TGallerySwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TGallerySwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TGallerySwift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TSwiftRepo.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Joann.Hou' => 'joann.hou@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TSwiftRepo.git', :tag => '0.1.4'}

  s.module_name      = 'TGallerySwift'
  s.platform         = :ios, '8.0'
  #s.ios.deployment_target = '8.0'

  s.source_files = 'TGallerySwift/TGallerySwift/Classes/**/*'
  s.resources =  ['TGallerySwift/TGallerySwift/Assets/*.png']

  s.dependency 'TNetImageSwift', '0.1.0'
end
