Pod::Spec.new do |s|
  s.name             = "TGetPictures"
  s.version          = "0.6.2"
  s.summary          = "土巴兔获取多张图片、拍照组件"
  s.description      = "集成获取多张图片、拍照、预览等代码"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.5.48" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.dependency 'TBasicLib'
  s.dependency  'TGallery'
  s.dependency  'TOldBasicClass'


  s.source_files = 'TGetPictures/Pod/Classes/*.{h,m}'

  s.resources = ['TGetPictures/Pod/Classes/**/*.xib','TGetPictures/Pod/Assets/*.png']
  s.prefix_header_contents = '#import "TAlbumCommonHeader.h"'
  s.subspec 'Model' do |m|
    m.source_files = 'TGetPictures/Pod/Classes/Model/*.{h,m}'
  end
  s.subspec 'View' do |v|
    v.source_files = ['TGetPictures/Pod/Classes/View/*.{h,m}', 'TGetPictures/Pod/Classes/View/FilterView/*.{h,m}']
  end
  s.subspec 'VC' do |vc|
    vc.source_files = 'TGetPictures/Pod/Classes/VC/*.{h,m}'
  end

end
