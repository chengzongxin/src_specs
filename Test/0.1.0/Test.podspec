Pod::Spec.new do |s|
  s.name             = "Test"
  s.version          = "0.1.0"
  s.summary          = "土巴兔获取单张图片组件"
  s.description      = "集成获取单张图片代码......"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.27" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Test/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'Test' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = ''

end
