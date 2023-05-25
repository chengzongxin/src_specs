#
# Be sure to run `pod lib lint TBaseUtilsSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
#
# 基础工具类，项目中的大多数模块都会依赖此模块，此模块中包含Foundation和UIKit库中很多常用类
# 的扩展，还有五个工具类，具体使用请参考具体类的API
#
Pod::Spec.new do |s|
  s.name             = 'TBaseUtilsSwift'
  s.version          = '0.4.0'
  s.summary          = 'A short description of TBaseUtilsSwift.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TBaseUtilsSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Poly.ma' => 'poly.ma@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TBaseUtilsSwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.swift_version = '4.0'

#  s.source_files = 'TBaseUtilsSwift/Classes/**/*.*'

  s.frameworks = 'UIKit', 'Foundation'

  #制作subspec
  s.subspec 'Foundation' do |f|
      f.source_files = 'TBaseUtilsSwift/Classes/Extensions/Foundation/*.*'
      f.dependency  'TBaseUtilsSwift/Tools'
  end
  
  s.subspec 'Tools' do |t|
      t.source_files = 'TBaseUtilsSwift/Classes/Extensions/Tools/*.{h,m}'
  end
  
  s.subspec 'UIKit' do |u|
      u.source_files = 'TBaseUtilsSwift/Classes/Extensions/UIKit/*.*'
      u.dependency  'TBaseUtilsSwift/Foundation'
      
      u.dependency 'Kingfisher', '4.7.0'
      u.dependency  'PKHUD', '5.0.0'
  end
  

end
