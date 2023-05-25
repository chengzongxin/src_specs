Pod::Spec.new do |s|
  s.name             = "TPay"
  s.version          = "1.1.0"
  s.summary          = "土巴兔支付组件"
  s.description      = "集成微信支付、支付宝支付"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.48" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TPay/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TPay' => ['TPay/Pod/Assets/*.png']
  }
  s.resources = ['TPay/Pod/Assets/*']
  s.vendored_frameworks = 'TPay/Pod/AlipaySDK.framework'

  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'libWeChatSDK', '~> 1.6'
  s.frameworks = ['CoreMotion']

end
