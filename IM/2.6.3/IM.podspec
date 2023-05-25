Pod::Spec.new do |s|
  s.name             = "IM"
  s.version          = "2.6.3"
  s.summary          = "土巴兔IM组件"
  s.description      = "集成土巴兔IM功能代码"
  s.homepage         = "http://repo.we.com/ios/im"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/im.git", :tag => "2.6.3" }
  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.dependency 'TRefresh', '~>0.1.5'
#s.dependency 'TBasicLib', '>=0.4.9'
  s.dependency 'IQKeyboardManager', '5.0.3'
  s.dependency 'TSearchBase' ,'~>0.4.0'
  s.dependency 'TTabBarController', '~>0.2.0'
  s.dependency 'CocoaAsyncSocket','~>7.4.3'
  s.dependency 'TGallery', '0.2.3'
  s.dependency 'TGetPictures', '0.5.5'
  s.dependency 'FMDB/SQLCipher', '2.4'
  s.dependency 'AliyunOSSiOS', '~> 2.6.0'
  s.dependency 'YYCache', '~> 1.0.4'
  s.dependency 'YYImage', '~> 1.0.4'

s.vendored_frameworks = ['IM/lib/AMapFoundationKit.framework','IM/lib/AMapSearchKit.framework','IM/lib/MAMapKit.framework','IM/lib/AMapLocationKit.framework']
s.frameworks = ['GLKit','OpenGLES','CoreGraphics','QuartzCore','CoreLocation','CoreTelephony','SystemConfiguration','Security','AdSupport','JavaScriptCore', 'AMapFoundationKit', 'AMapSearchKit', 'MAMapKit', 'AMapLocationKit']
s.libraries = ['z','stdc++','c++']

  s.source_files = 'IM/Utility/TIMCommonHeader.h'
  s.resources =  ['IM/Assets/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Assets/*/*/*.{png,jpg,xib,plist,sqlite,txt,bundle}','IM/Section/{*/*/,*/}*.{xib}']
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


s.xcconfig = {
'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/IM/lib/AMapFoundationKit $(PODS_ROOT)/IM/lib/AMapSearchKit  $(PODS_ROOT)/IM/lib/MAMapKit  $(PODS_ROOT)/IM/lib/AMapLocationKit',
'OTHER_LDFLAGS' => '$(inherited) -lc++',
'OTHER_CFLAGS' => '$(inherited) -DSQLITE_HAS_CODEC'
}

end
