
Pod::Spec.new do |s|
        
  s.name             = "TMToast"
  s.version          = "1.0.0"
  s.summary          = "实现toast弹出视图"
  s.description      = "基于TMUIKit库抽离实现,支持二进制组件"
  s.homepage         = "http://repo.we.com/tubroker/tmuikit"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '8d89914' }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true

  s.source_files = 'TMToast/Pod/Classes/**/*'
  
  # s.subspec 'Resources' do |asset|
  #   asset.source_files = 'TMToast/Pod/Assets/*.png'
  # end
  
  #s.resource_bundle = {
  #   'TMToastAssets' => ['Assets/*.png']
  #}
  
  s.resource_bundles = {
    "TMToastAssets" => ["TMToast/Pod/Assets/**"]
  }
    
  s.dependency 'Masonry', '1.1.0'

end
