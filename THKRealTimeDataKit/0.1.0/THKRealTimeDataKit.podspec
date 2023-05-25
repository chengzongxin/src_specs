#
# Be sure to run `pod lib lint THKRealTimeDataKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKRealTimeDataKit'
  s.version          = '0.1.0'
  s.summary          = '实时数据库，主要存放用户信息和位置信息(城市id)'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent'
  
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "6212170" }

  s.ios.deployment_target = '9.0'
  s.static_framework = true
  
  s.public_header_files = 'BaseKit/THKRealTimeDataKit/*.h'
  s.source_files = 'BaseKit/THKRealTimeDataKit/*.{h,m}'
  
  s.subspec 'Resources' do |rs|
    rs.resources = ['BaseKit/THKRealTimeDataKit/Assets/*','BaseKit/THKRealTimeDataKit/README.md']
  end

  s.subspec 'LocationTool' do |loc|
    loc.public_header_files = 'BaseKit/THKRealTimeDataKit/LocationTool/*.h'
    loc.source_files =  'BaseKit/THKRealTimeDataKit/LocationTool/*'

    loc.dependency 'THKLocationManager','0.1.0'
  end

  s.subspec 'Request' do |request|
    request.subspec 'MyDecorateInfo' do |mydecorateinfo|
        mydecorateinfo.public_header_files = 'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/*.h'
        mydecorateinfo.source_files =  'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/*'
        mydecorateinfo.subspec 'MyDecorateInfoRequest' do |mydecorateinforequest|
            mydecorateinforequest.public_header_files = 'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/MyDecorateInfoRequest/*.h'
            mydecorateinforequest.source_files =  'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/MyDecorateInfoRequest/*'
        end
        mydecorateinfo.subspec 'MyDecorateUpdateRequest' do |mydecorateupdaterequest|
            mydecorateupdaterequest.public_header_files = 'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/MyDecorateUpdateRequest/*.h'
            mydecorateupdaterequest.source_files =  'BaseKit/THKRealTimeDataKit/Request/MyDecorateInfo/MyDecorateUpdateRequest/*'
        end
    end
    request.subspec 'UserInfo' do |userinfo|
        userinfo.public_header_files = 'BaseKit/THKRealTimeDataKit/Request/UserInfo/*.h'
        userinfo.source_files =  'BaseKit/THKRealTimeDataKit/Request/UserInfo/*'
    end
    request.subspec 'GetCurrentItemIdRequest' do |currentItemquest|
      currentItemquest.public_header_files = 'BaseKit/THKRealTimeDataKit/Request/GetCurrentItemIdRequest/*.h'
      currentItemquest.source_files =  'BaseKit/THKRealTimeDataKit/Request/GetCurrentItemIdRequest/*'
    end
  end


  s.subspec 'UserModel' do |usermodel|
    usermodel.public_header_files = 'BaseKit/THKRealTimeDataKit/UserModel/*.h'
    usermodel.source_files =  'BaseKit/THKRealTimeDataKit/UserModel/*'

    usermodel.dependency 'THKRealTimeDataKit/Request','0.1.0'
  end

  s.dependency 'THKMacroKit','0.1.0'
  s.dependency 'THKConfigFileManagerKit','0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
end
