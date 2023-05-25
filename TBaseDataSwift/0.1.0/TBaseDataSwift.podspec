#
# Be sure to run `pod lib lint TBaseDataSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TBaseDataSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TBaseDataSwift.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TBaseDataSwift.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Poly.ma' => 'poly.ma@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TBaseDataSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'TBaseDataSwift/Classes/**/*'
  
  s.dependency 'TBaseStorageSwift'
  s.dependency 'RealmSwift'
  
end
