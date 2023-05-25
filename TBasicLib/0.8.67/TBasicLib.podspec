Pod::Spec.new do |s|
  s.name             = "TBasicLib"
  s.version          = "0.8.67"
  s.summary          = "土巴兔iOS基础库"
  s.description      = "土巴兔iOS基础库,所有项目和库的基础"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "4d46649b" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.public_header_files = "TBasicLib/Pod/Classes/TBasicLib.h"  #工程需要暴露出来的头文件
  s.source_files = 'TBasicLib/Pod/Classes/*.{h,m}'
 
  s.subspec 'CommonConstant' do |constant|
    constant.source_files = 'TBasicLib/Pod/Classes/CommonConstant/**/*'
    constant.public_header_files = "TBasicLib/Pod/Classes/CommonConstant/*.h"
  end
  
  s.subspec 'CommonDefine' do |macro|
    macro.source_files = 'TBasicLib/Pod/Classes/CommonDefine/**/*'
    macro.public_header_files = "TBasicLib/Pod/Classes/CommonDefine/*.h"
  end
  
  s.subspec 'CommonInline' do |inline|
    inline.source_files = 'TBasicLib/Pod/Classes/CommonInline/**/*'
    inline.public_header_files = "TBasicLib/Pod/Classes/CommonInline/*.h"
  end
    
  s.subspec 'CommonTool' do |tool|
    tool.source_files = 'TBasicLib/Pod/Classes/CommonTool/**/*'
    tool.public_header_files = "TBasicLib/Pod/Classes/CommonTool/*.h"
  end
  
end
