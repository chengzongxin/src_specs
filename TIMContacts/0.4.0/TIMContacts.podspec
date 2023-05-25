Pod::Spec.new do |s|
  s.name             = "TIMContacts"
  s.version          = "0.4.0"
  s.summary          = "商家APP im 的联系人组件"
  s.description      = "封装im 的联系人列表。联系人数据维护 选择联系人"
  s.homepage         = "http://repo.we.com/iosfeaturelibraries/timcontacts"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/iosfeaturelibraries/timcontacts.git", :tag => "0.4.0" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'TIMContacts/Classes/*.{h,m}'
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'

  s.resources =  ['TIMContacts/Classes/**/*.xib','TIMContacts/Assets/**/*.{png,jpg,plist,sqlite,txt,bundle}']

  s.dependency 'TBasicLib'
  s.dependency 'FMDB', '2.4'

  s.subspec 'Class' do |cl|
    cl.source_files = 'TIMContacts/Classes/**/*.{h,m}'
  end


end
