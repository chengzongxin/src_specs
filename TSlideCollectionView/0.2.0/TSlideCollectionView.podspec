Pod::Spec.new do |s|
  s.name             = "TSlideCollectionView"
  s.version          = "0.2.0"
  s.summary          = "滑动查看图片组件"
  s.description      = "由CollectionView修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "hank.zhang" => "hank.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.36" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TSlideCollectionView/Pod/Classes/*.{h,m}'
#  s.resource_bundles = {
#    'TSlideCollectionView' => ['TSlideCollectionView/Pod/Assets/*.png']
#  }
  s.resources = ['TSlideCollectionView/Pod/Assets/*']

end
