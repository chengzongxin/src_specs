
Pod::Spec.new do |s|
  s.name             = "TFileLogDisplayer"
  s.version          = "0.3.3"
  s.summary          = "土巴兔本地文件日志显示组件"
  s.description      = "土巴兔本地文件日志显示组件,更方便更友好的查看log"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "08da911" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'TFileLogDisplayer/Pod/**/*.{h,m}'
  s.resources =  'TFileLogDisplayer/Pod/**/*.{png,jpg,xib,plist,sqlite,txt,bundle}'

  s.dependency 'TBasicLib', '0.8.67'
  s.dependency 'TSearchBase','0.6.8'
  s.dependency 'TBTLog', '0.1.6'
  s.dependency 'TBTCustomView', '0.3.4'
  s.dependency 'TMEmptyView', '1.0.0'

end
