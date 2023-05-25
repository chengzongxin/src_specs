Pod::Spec.new do |s|
  s.name             = "TRongCloudIM"
  s.version          = "2.9.4"
  s.summary          = "RongCloud IM SDK.(如果看不到最新版本，请使用 pod repo update 命令更新一下本地pod仓库，从 2.9.0 版本开始这里不再包含 CallKit 和 CallLib 类库的管理，音视频服务升级为融云自有音视频，声网用户请根据站内信提示更新)"
  s.description      = "RongCloud IM SDK for iOS.\n\n\n* Think: Why did you write this? What is the focus? What does it do?\n* CocoaPods will be using this to generate tags, and improve search results.\n* Try to keep it short, snappy and to the point.\n* Finally, don't worry about the indent, CocoaPods strips it!"
  s.homepage         = "http://rongcloud.cn/"
  s.license          = 'MIT'
  s.author           = { "litao" => "litao@rongcloud.cn" }
  s.source           = { :http => "http://repo.we.com/iosfeaturelibraries/resources/raw/6775cd354978ca5f08ca156db90b96c5b0543378/RongCloudIM_v2_9_4_1.zip"}
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.subspec 'IMLib' do |lib|
    # lib.name = 'IMLib'
    lib.vendored_frameworks = 'RongCloudIM/RongIMLib.framework'
    lib.libraries = ['stdc++', 'sqlite3', 'z']
    lib.resources = 'RongCloudIM/RCConfig.plist'
#lib.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}
    lib.vendored_libraries = 'RongCloudIM/libopencore-amrnb.a'
  end

  s.subspec 'IMKit' do |kit|
    # kit.name = 'IMKit'
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
    kit.dependencies = 'TRongCloudIM/IMLib'
  end

end
