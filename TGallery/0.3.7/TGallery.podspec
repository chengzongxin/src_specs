Pod::Spec.new do |s|
  s.name             = "TGallery"
  s.version          = "0.3.7"
  s.summary          = "土巴兔浏览大图组件"
  s.description      = "支持gif"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => 'eb34927' }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TGallery/Pod/Classes/*.{h,m}'

  s.resources = ['TGallery/Pod/Classes/*.xib', 'TGallery/Pod/Assets/*.png']
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'

  s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'TMUIKit/TMUIExtensions', '1.1.15'
  s.dependency 'TBTCustomView', '0.3.3'
  s.dependency 'YYImage'

end
