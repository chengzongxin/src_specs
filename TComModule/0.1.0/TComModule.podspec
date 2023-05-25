
Pod::Spec.new do |s|
  s.name             = "TComModule"
  s.version          = "0.1.0"
  s.summary          = "装修公司模块"
  s.description      = "装修公司模块"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "hank.zhang" => "hank.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.35" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'TComModule/Pod/Classes/*.{h,m}'
#  s.resource_bundles = {
#    'TComModule' => ['TComModule/Pod/Assetes/*']
#  }
  s.resources = ['TComModule/Pod/Assetes/*']
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'


  s.subspec 'BaseClass' do |bc|
    bc.source_files = 'TComModule/Pod/Classes/BaseClass/*.{h,m}'
  end
  s.subspec 'BaseView' do |bv|
    bv.source_files = 'TComModule/Pod/Classes/BaseView/*.{h,m}'
  end
  s.subspec 'Help' do |hp|
    hp.source_files = 'TComModule/Pod/Classes/Help/*.{h,m}'
  end
  s.subspec 'Model' do |md|
    md.source_files = 'TComModule/Pod/Classes/Model/*.{h,m}'
  end
  s.subspec 'TMap' do |map|
    map.source_files = 'TComModule/Pod/Classes/TMap/*.{h,m}'
  end
  s.subspec 'VC' do |vc|
    vc.source_files = 'TComModule/Pod/Classes/VC/*.{h,m}'
  end
  s.subspec 'View' do |view|
    view.source_files = 'TComModule/Pod/Classes/View/*.{h,m}'
  end

end
