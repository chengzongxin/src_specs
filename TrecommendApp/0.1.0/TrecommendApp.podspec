Pod::Spec.new do |s|
  s.name             = "TrecommendApp"
  s.version          = "0.1.0"
  s.summary          = "推荐appvc"
  s.description      = "由tableViewController修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "hank.zhang" => "hank.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.32" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TrecommendApp/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TrecommendApp' => ['Pod/Assets/*.png']
  }
  s.resources = ['TrecommendApp/Pod/Classes/*.xib']
end
