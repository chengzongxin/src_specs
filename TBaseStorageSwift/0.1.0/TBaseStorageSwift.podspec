#
# Be sure to run `pod lib lint TBaseStorageSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 此模块为基础数据存储模块，支持的数据持久化方式有：数据库，UserDefault，KeyChain，全局缓存
# 具体使用方法请参考类中的API
#
Pod::Spec.new do |s|
  s.name             = 'TBaseStorageSwift'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TBaseStorageSwift.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TBaseStorageSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Poly.ma' => 'poly.ma@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TBaseStorageSwift.git', :tag => s.version.to_s }


  s.ios.deployment_target = '8.0'

  s.source_files = 'TBaseStorageSwift/Classes/**/*'
  
  s.dependency 'KeychainAccess'
  s.dependency 'RealmSwift'
end
