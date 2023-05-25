Pod::Spec.new do |s|
  s.name             = "TFiltrateVC"
  s.version          = "10.0.0"
  s.summary          = "家居生活筛选控件"
  s.description      = "家居生活筛选控件"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "hank.zhang" => "hank.zhang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TFiltrateVC/Pod/Classes/*.{h,m}'
  s.resources = ['TFiltrateVC/Pod/Assetes/*']


  s.subspec 'Help' do |hp|
    hp.source_files = 'TFiltrateVC/Pod/Classes/Help/*.{h,m}'
  end
  s.subspec 'Model' do |md|
    md.source_files = 'TFiltrateVC/Pod/Classes/Model/*.{h,m}'
  end
  s.subspec 'VC' do |vc|
    vc.source_files = 'TFiltrateVC/Pod/Classes/VC/*.{h,m}'
  end
  s.subspec 'View' do |view|
    view.source_files = 'TFiltrateVC/Pod/Classes/View/*.{h,m}'
  end

end
