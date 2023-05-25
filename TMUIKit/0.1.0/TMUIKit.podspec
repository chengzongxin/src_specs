#
#  Be sure to run `pod spec lint TMUIKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "TMUIKit"
  s.version      = "0.1.0"
  s.summary      = "致力于提高项目UI开发效率的组件库| 0.1.0剥离TMToast与TMEmpty同时支持二进制组件"
  s.description  = <<-DESC
                   TMUIKit iOS 是一个致力于提高项目 UI 开发效率的组件库，为工程提供一些通用的UI基础库及功能组件库以及一些通用的工具库。
                   旨在帮助快速高效的构建工程的基础设计元素，以及统一维护基础元素的版本兼容性处理，助于提高开发效率和项目质量。
                   DESC
  s.homepage     = "http://repo.we.com/tubroker/tmuikit.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "nigel.ning" => "nigel.ning@corp.to8to.com" }
  s.platform     = :ios, "9.0"
  s.requires_arc = true
  s.source       = { :git => "http://repo.we.com/tubroker/tmuikit.git", :commit => "8d6080d7"}
  s.frameworks       = 'Foundation', 'UIKit', 'CoreGraphics'
  s.source_files  = "TMUIKit.h"
  s.dependency "Masonry", "1.1.0"
  s.dependency "TMTools", "0.0.1"
  s.dependency "TMUICore", "0.0.1"
  s.dependency "TMUIExtensions", "0.0.1"
  s.dependency "TMUIComponents", '0.0.1'
  
end
