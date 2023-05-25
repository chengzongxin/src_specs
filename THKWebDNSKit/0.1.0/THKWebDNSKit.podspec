#
# Be sure to run `pod lib lint THKWebDNSKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKWebDNSKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKWebDNSKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/*.{h,m}'
  s.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/*.h'
  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseBusinessKit/THKWebDNSKit/README.md','BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Assets/Py/*.py','BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Assets/Js/*.js']
  end
  s.subspec 'KKCategory' do |kkcategory|
    kkcategory.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/KKCategory/*.h'
    kkcategory.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/KKCategory/*'
  end

  s.subspec 'CCCandyWebCache' do |cccandywebcache|
    cccandywebcache.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/*.h'
    cccandywebcache.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/*'
    cccandywebcache.subspec 'VersionChecker' do |versionchecker|
        versionchecker.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/VersionChecker/*.h'
        versionchecker.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/VersionChecker/*'
    end
    cccandywebcache.subspec 'WebViewProtocol' do |webviewprotocol|
        webviewprotocol.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/WebViewProtocol/*.h'
        webviewprotocol.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/WebViewProtocol/*'
    end
    cccandywebcache.subspec 'CacheManager' do |cachemanager|
        cachemanager.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/CacheManager/*.h'
        cachemanager.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/CacheManager/*'
    end
    cccandywebcache.subspec 'Utils' do |utils|
        utils.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/Utils/*.h'
        utils.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/Utils/*'
    end
    cccandywebcache.subspec 'HTFileDownloader' do |htfiledownloader|
        htfiledownloader.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/HTFileDownloader/*.h'
        htfiledownloader.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/HTFileDownloader/*'
    end
    cccandywebcache.subspec 'bsdiff' do |bsdiff|
        bsdiff.subspec 'bsdiff' do |bsdiff|
            bsdiff.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/bsdiff/bsdiff/*.h'
            bsdiff.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/bsdiff/bsdiff/*'
        end
        bsdiff.subspec 'bzip2' do |bzip2|
            bzip2.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/bsdiff/bzip2/*.h'
            bzip2.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/CCCandyWebCache/bsdiff/bzip2/*'
        end
    end
  end

  s.subspec 'Network' do |network|
    network.subspec 'GetOfflinePackage' do |getofflinepackage|
        getofflinepackage.public_header_files = 'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/Network/GetOfflinePackage/*.h'
        getofflinepackage.source_files =  'BaseBusinessKit/THKWebDNSKit/THKWebDNSKit/Classes/Network/GetOfflinePackage/*'
    end
  end
  
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'KKJSBridge/AjaxProtocolHook','1.3.9'
  s.dependency 'SSZipArchive', '2.2.3'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
  s.dependency 'TYYKit', '0.0.4'
  s.dependency 'THKConfigurationKit', '0.1.0'
  s.dependency 'THKCustomViewKit', '0.1.0'
  s.dependency 'THKBusinessToolKit', '0.1.0'

  s.prefix_header_contents = <<-DESC
#import <THKWebDNSKit/THKWebDNS_BaseDefine.h>
                                  DESC
end
