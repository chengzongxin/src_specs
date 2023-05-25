Pod::Spec.new do |s|
  s.name             = "TBasicLib"
  s.version          = "0.0.1.3"
  s.summary          = "土巴兔iOS基础库"
  s.description      = "土巴兔iOS基础库,所有项目和库的基础"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "3d8683f" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TBasicLib/Pod/Classes/**/*.{h,m}'
  
  s.subspec 'CommonConstant' do |constant|
    constant.source_files = 'Pod/Classes/CommonConstant/**/*'
  end
  
  s.subspec 'CommonDefine' do |macro|
    macro.source_files = 'Pod/Classes/CommonDefine/**/*'
  end
  
  s.subspec 'CommonInline' do |inline|
    inline.source_files = 'Pod/Classes/CommonInline/**/*'
  end
    
  s.subspec 'CommonTool' do |tool|
    tool.source_files = 'Pod/Classes/CommonTool/**/*'
  end
  
end
