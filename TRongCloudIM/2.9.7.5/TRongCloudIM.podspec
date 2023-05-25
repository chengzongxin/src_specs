Pod::Spec.new do |s|
  s.name             = "TRongCloudIM"
  s.version          = "2.9.7.5"
  s.summary          = "RongCloud IM SDK.  https://github.com/CocoaPods/Specs/blob/master/Specs/3/f/1/RongCloudIM/2.9.7/RongCloudIM.podspec.json"
  s.description      = "RongCloud IM SDK for iOS."
  s.homepage         = "http://rongcloud.cn/"
  s.license          = 'MIT'
  s.author           = { "litao" => "litao@rongcloud.cn" }
  s.source           = { :http => "http://repo.we.com/iosfeaturelibraries/resources/raw/master/RongCloudIM_v2_9_7.zip"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'IMLib' do |lib|
    lib.vendored_frameworks = 'RongCloudIM/RongIMLib.framework'
    lib.libraries = ['stdc++', 'sqlite3', 'z']
    lib.resources = 'RongCloudIM/RCConfig.plist'
    lib.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    lib.vendored_libraries = 'RongCloudIM/libopencore-amrnb.a'
  end

  s.subspec 'IMKit' do |kit|
    kit.resources = ['RongCloudIM/RongCloud.bundle', 'RongCloudIM/en.lproj', 'RongCloudIM/zh-Hans.lproj', 'RongCloudIM/Emoji.plist', 'RongCloudIM/RCColor.plist']
    kit.vendored_frameworks = 'RongCloudIM/RongIMKit.framework'
    kit.frameworks = [
        'AssetsLibrary',
        'MapKit',
        'ImageIO',
        'CoreLocation',
        'SystemConfiguration',
        'QuartzCore',
        'OpenGLES',
        'CoreVideo',
        'CoreTelephony',
        'CoreMedia',
        'CoreAudio',
        'CFNetwork',
        'AudioToolbox',
        'AVFoundation',
        'UIKit',
        'CoreGraphics',
        'SafariServices'
      ]
    kit.dependency 'TRongCloudIM/IMLib'
  end

s.prepare_command     = <<-EOF
while read line; do
if [[ $line == *"//  iOS-IMKit"* ]]; then
sed -i '' "s#//  iOS-IMKit#\@import Foundation;#" "RongCloudIM/RongIMKit.framework/Headers/RCThemeDefine.h"
break
fi
done < "RongCloudIM/RongIMKit.framework/Headers/RCThemeDefine.h"
mkdir RongCloudIM/RongIMKit.framework/Modules
touch RongCloudIM/RongIMKit.framework/Modules/module.modulemap
cat <<-EOF > RongCloudIM/RongIMKit.framework/Modules/module.modulemap
framework module RongIMKit {
umbrella header "RongIMKit.h"
export *
}
\EOF
mkdir RongCloudIM/RongIMLib.framework/Modules
touch RongCloudIM/RongIMLib.framework/Modules/module.modulemap
cat <<-EOF > RongCloudIM/RongIMLib.framework/Modules/module.modulemap
framework module RongIMLib {
umbrella header "RongIMLib.h"
export *
}
\EOF
EOF

end
