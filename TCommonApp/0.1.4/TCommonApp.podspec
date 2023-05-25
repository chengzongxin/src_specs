Pod::Spec.new do |s|
  s.name             = "TCommonApp"
  s.version          = "0.1.4"
  s.summary          = "土巴兔小app共用模块"
  s.description      = "集成土巴兔app除了首页和业主后台以外的模块"
  s.homepage         = "http://repo.we.com/ios/smallApp"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/smallApp.git", :tag => "0.1.5" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'HouseKeeper/*.{h,m}'
  s.resources = ['HouseKeeper/*.{png,jpg,xib,plist,sqlite,txt,bundle}', 'HouseKeeper/findCom/*.{png}']

  s.prefix_header_contents = '#import "TPrefixHeader.h"'

  s.subspec 'TMap' do |map|
    map.source_files = 'HouseKeeper/TMap/*.{h,m}'
  end
  s.subspec 'LunarCalendar' do |lc|
    lc.source_files = 'HouseKeeper/LunarCalendar/*.{h,m}'
  end
  s.subspec 'TStarView' do |sta|
    sta.source_files = 'HouseKeeper/TStarView/*.{h,m}'
  end
  s.subspec 'TumblrMenu' do |sta|
    sta.source_files = 'HouseKeeper/TumblrMenu/*.{h,m}'
  end


end
