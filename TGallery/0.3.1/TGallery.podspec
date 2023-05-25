Pod::Spec.new do |s|
  s.name             = "TGallery"
  s.version          = "0.3.1"
  s.summary          = "土巴兔浏览大图组件"
  s.description      = "集成浏览大图代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => '993dd4a' }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TGallery/Pod/Classes/*.{h,m}'

  s.resources = ['TGallery/Pod/Classes/*.xib', 'TGallery/Pod/Assets/*.png']
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'

  s.dependency 'TBasicLib'
  s.dependency 'TBTCategory'
  s.dependency 'TBTCustomView'

end
