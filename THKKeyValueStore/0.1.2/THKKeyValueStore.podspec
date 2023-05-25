Pod::Spec.new do |s|
    s.name         = "THKKeyValueStore"
    s.version      = "0.1.2"
    s.summary      = "封装YTKKeyValueStore 指定FMDB依赖版本 A simple Key-Value storage tool, using Sqlite as backend."
    s.homepage     = "https://github.com/yuantiku/YTKKeyValueStore"
    s.license      = "MIT"
    s.author       = { "tangqiao" => "tangqiao@fenbi.com" }
    s.platform     = :ios
    s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "bd9d3d85"}
    s.source_files = "YTKKeyValueStore/YTKKeyValueStore.{h,m}"
    s.requires_arc = true
    
    s.source_files        = 'THKKeyValueStore/Class/*.{h,m,mm,c}'
    s.public_header_files = 'THKKeyValueStore/Class/YTKKeyValueStore.h'
    
    s.dependency   "FMDB", "2.7.5"
    
  end