Pod::Spec.new do |s|
  s.name             = "IM"
  s.version          = "0.1.0"
  s.summary          = "土巴兔IM组件"
  s.description      = "集成土巴兔IM功能代码"
  s.homepage         = "http://repo.we.com/ios/im"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/im.git" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.dependency 'TBasicLib', '~>0.4.0'
  s.dependency 'TRefresh', '~>0.1.5'
  s.dependency 'IQKeyboardManager', '~>3.3.7'
  s.dependency 'TSearchBase' ,'~>0.4.0'
  s.dependency 'CocoaAsyncSocket','~>7.4.3'
  s.dependency 'TGallery', '~>0.2.2'
  s.dependency 'TGetPictures', '~>0.5.2'
  s.dependency 'FMDB', '~>2.6'


  s.source_files = 'IM/Utility/TIMCommonHeader.h'
  s.resources =  ['IM/Assets/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Assets/*/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Section/{*/*/,*/}*.{xib}']
#s.resource_bundles = {'Resources' => ['IM/Assets/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Assets/*/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Section/{*/*/,*/}*.{xib}']}
  s.prefix_header_contents = '#import "TIMCommonHeader.h"'

  s.subspec 'Core' do |co|
    co.source_files = 'IM/Core/{*/,*/*/,*}*.{h,m}'
  end
  s.subspec 'Utility' do |ut|
    ut.source_files = 'IM/Utility/{*/*/*/*/*,*/*/*/*,*/*/*,*/*,*}'
  end
  s.subspec 'Section' do |se|
    se.source_files = 'IM/Section/{*/*/,*/}*.{h,m}'
  end

end
