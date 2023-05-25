
Pod::Spec.new do |s|
        
  s.name             = "TMEmptyView"
  s.version          = "1.0.0"
  s.summary          = "实现自定义空界面占位视图"
  s.description      = "基于TMUIKit库抽离实现"
  s.homepage         = "http://repo.we.com/tubroker/tmuikit"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => '3a6f64c' }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true

  s.source_files = 'TMEmptyView/Pod/**/*.{h,m}'
  s.subspec 'Content' do |content|
    content.source_files = 'TMEmptyView/Pod/Content/*'
  end
  
  # s.subspec 'Resources' do |resource|
  #   resource.source_files = 'TMEmptyView/Pod/Resource/*.png'
  # end
    
  s.resource_bundles = {
    "TMEmptyUIAssets" => ["TMEmptyView/Pod/Resource/**"]
  }
  
  s.dependency 'Masonry', '1.1.0'
  

end
