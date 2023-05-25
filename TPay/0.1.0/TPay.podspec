Pod::Spec.new do |s|
  s.name             = "TPay"
  s.version          = "0.1.0"
  s.summary          = "土巴兔支付组件"
  s.description      = "集成微信支付、支付宝支付"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.1.17" }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'TPay/Pod/Classes/*.{h,m}'
  s.resource_bundles = {
    'TPay' => ['Pod/Assets/*.png']
  }
  s.prefix_header_contents = '#import <TBasicLib/TBasicLib.h>'
  s.dependency 'libWeChatSDK', '~> 1.6'
  s.dependency 'AliPay', '~> 2.1.2'
  s.dependency 'OpenSSL', '~> 1.0.206'

  s.subspec 'aliPay' do |a|
    a.source_files = 'TPay/Pod/Classes/aliPay/*.{h,m}'
    a.subspec 'Util' do |util|
        util.source_files = 'TPay/Pod/Classes/aliPay/Util/*.{h,m}'
    end
  end
  s.subspec 'weixinPay' do |w|
    w.source_files = 'TPay/Pod/Classes/weixinPay/*.{h,m}'
  end
end
