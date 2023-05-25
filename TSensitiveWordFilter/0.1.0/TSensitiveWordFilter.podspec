Pod::Spec.new do |s|
  s.name             = "TSensitiveWordFilter"
  s.version          = "0.1.0"
  s.summary          = "土巴兔敏感词组件"
  s.description      = "集成检查敏感词代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.23" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TSensitiveWordFilter/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TSensitiveWordFilter' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'TBasicLib'
end
