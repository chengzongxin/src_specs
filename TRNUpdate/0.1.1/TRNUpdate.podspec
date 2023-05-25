Pod::Spec.new do |s|
  s.name             = "TRNUpdate"
  s.version          = "0.1.1"
  s.summary          = "土巴兔检查和更新reactNative代码组件"
  s.description      = "集成加密jsbundle、reactNative加载时先解密、检查更新本地jsbundle包"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git" , :tag => "0.1.42"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TRNUpdate/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TRNUpdate' => ['Pod/Assets/*.png']
  }
  s.dependency 'SSZipArchive', '~> 1.1'

end
