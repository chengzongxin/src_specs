
Pod::Spec.new do |s|
  s.name             = "TBasicLib"
  s.version          = "0.2.0"
  s.summary          = "土巴兔iOS基础库"
  s.description      = "土巴兔iOS基础库,所有项目和库的基础"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.25" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'TBasicLib/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TBasicLib' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import "TBasicLib.h"'
  # s.public_header_files = 'TBasicLib/Pod/Classes/TBasicLib.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'UMengAnalytics', '~> 3.6.6'
  s.dependency 'AFNetworking', '~> 2.6.3'
  s.dependency 'Aspects', '~> 1.4.1'
  s.dependency 'CocoaLumberjack', '~> 2.2.0'
  s.dependency 'SDWebImage', '~> 3.7.3'
  s.dependency 'MBProgressHUD', '~> 0.9.1'
  s.dependency 'Reachability', '~> 3.2'
  #s.dependency 'iOS-WebP', '~> 0.4'
  s.dependency 'TOldBasicClass'
  s.dependency 'TLocationHander'


  s.subspec 'BasicClass' do |ba|
    ba.source_files = 'TBasicLib/Pod/Classes/BasicClass/*.{h,m}'
  end
  s.subspec 'Category' do |ca|
    ca.source_files = 'TBasicLib/Pod/Classes/Category/*.{h,m}'
  end
  s.subspec 'Common' do |co|
    co.source_files = 'TBasicLib/Pod/Classes/Common/*.{h,m}'
  end
  s.subspec 'TCustomView' do |cus|
    cus.source_files = 'TBasicLib/Pod/Classes/TCustomView/*.{h,m}'
  end
  s.subspec 'ThirdParty' do |thr|
    thr.source_files = 'TBasicLib/Pod/Classes/ThirdParty/**/*.{h,m}'
  end

end
