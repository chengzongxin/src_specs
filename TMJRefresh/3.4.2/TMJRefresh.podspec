Pod::Spec.new do |s|
  s.name             = "TMJRefresh"
  s.version          = "3.4.2"
  s.summary          = "基于MJRefresh 3.4.1版本基础上稍微修改部分源码后的库,解决工程内部原旧库的冲突"
  s.description      = "由MJRefresh 3.4.1 版本修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "8b7d329" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TMJRefresh/**/*.{h,m}'

  # MJRefresh 后续不要随便修改名字，pod库内相关图片数据读取的Bundle名是固定写死为MJRefresh.bundle
  s.resource_bundles = {
    'MJRefresh' => ['TMJRefresh/MJRefresh.bundle/*']
  }
  
end
