#
# Be sure to run `pod lib lint TBaseUISwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 此模块为基础UI组件模块，包含四大基础控制器，BaseViewController,BaseNavigationControoler,BaseWebViewController,BaseTabBarController
# 理论上说项目中的需要用到的控制器都要继承上面的基础控制器，基础控制器中包含了一些基本的方法，子类按需重写即可，方便统一管理
# 不用担心耦合问题，基类里面只提供基本接口方法，需要就重写或者沿用基类方法
# 此外，其他UI组件，比如pickerView，popView之类项目中通用的UI组件模块可以封装完毕后加入次模块
# 目前此模块只包含一些基本东西，并不是十分完善，后续可以安需添加，完善此模块
#
Pod::Spec.new do |s|
  s.name             = 'TBaseUISwift'
  s.version          = '1.0.0'
  s.summary          = 'A short description of TBaseUISwift.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/TBaseUISwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Poly.ma' => 'poly.ma@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/TBaseUISwift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.1'

  s.source_files = 'TBaseUISwift/Classes/**/*.*'

  s.resources = 'TBaseUISwift/Assets/*.png'
  
  s.dependency 'TBaseUtilsSwift'
  
s.dependency 'MJRefresh'
s.dependency 'TBaseUtilsSwift'
s.dependency 'TResourceTool'
s.dependency 'SnapKit'
s.dependency 'WebViewJavascriptBridge'
s.dependency 'PKHUD' , '~> 5.0.0'
s.dependency 'Toast-Swift' , '~> 3.0.1'
end
