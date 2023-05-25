#
# Be sure to run `pod lib lint TMTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TMTools'
  s.version          = '0.1.3'
  s.summary          = 'A short description of TMTools.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/ios/tbtrepo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "ad5c1f1" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'TMTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TMTools' => ['TMTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  #tools
  s.subspec 'TMRsaTool' do |ss|
    ss.frameworks = 'Foundation'
    # 因集成百度地图SDK需要依赖openssl（百度地图SDK官网上写明openssl对应版本为1.0.2e,但提工单后相关开发人员回复地图SDK用的是1.1.1g版本。app引入时可用1.1.1g及之后的版本都可以 https://www.openssl.org/source/old/1.0.2/）,所以这里还原为openssl的引入，TMRsaTool的类代码逻辑会兼容openssl和openssl-universal两个库的api调用.
    #OpenSSL 与 OpenSSL-Universal 依赖库只能二选一进行引入，根据实际需要选择即可.
    #注意相关cocoapods版本，OpenSSL只能是pod版本1.5.3及以下，OpenSSL-Universal没有pod的版本限制.
    #sss.dependency 'OpenSSL-Universal', '~> 1.0.2.20' #openssl库的集成，涉及rsa加密功能, pod install 此库20多MB，下载稍慢，耐心等待一会即可
    #sss.dependency 'OpenSSL', '1.0.210' #历史各版本与百度地图里用的对不上
    #pod库暂无1.1.1g版本的openssl公开库可直接集成，所以需要自行手动编译对应版本的openssl库,注意podspec文件里需要写上 s.header_dir = 'openssl' 才能支持 <openssl/xxx.h> 标准库格式的头文件引用.
    
    ss.source_files = 'TMTools/TMTools/Classes/TMRsaTool/*.{h,m}'
    ss.subspec 'openssl' do |sss|
      sss.source_files = 'TMTools/TMTools/Classes/TMRsaTool/openssl/include/**/*.{h,m}'
      sss.header_dir = 'openssl'
      sss.vendored_libraries = 'TMTools/TMTools/Classes/TMRsaTool/openssl/lib/*.a'
    end
  end
end
