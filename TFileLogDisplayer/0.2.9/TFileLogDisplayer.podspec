
Pod::Spec.new do |s|
  s.name             = "TFileLogDisplayer"
  s.version          = "0.2.9"
  s.summary          = "土巴兔本地文件日志显示组件"
  s.description      = "土巴兔本地文件日志显示组件,更方便更友好的查看log"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "993dd4a" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'TFileLogDisplayer/TFileLogDisplayer/**/*.{h,m}'
  s.resources =  'TFileLogDisplayer/TFileLogDisplayer/**/*.{png,jpg,xib,plist,sqlite,txt,bundle}'

  s.dependency 'TBasicLib'#, '>= 0.5.2'
  s.dependency 'TSearchBase'
  s.dependency 'TBTLog'



end
