#
# Be sure to run `pod lib lint THKConfigFileManagerKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKConfigFileManagerKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKConfigFileManagerKit.'

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
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "b66dd8a0" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/*.h'
  s.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/*'

  s.resource_bundles = {
      'THKConfigFileManagerKit' => ['BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Assets/*','BaseKit/THKConfigFileManagerKit/README.md']
  }
  s.subspec 'Model' do |model|
    model.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Model/*.h'
    model.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Model/*'
  end

  s.subspec 'Request' do |request|
    request.subspec 'UpdateConfig' do |updateconfig|
        updateconfig.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/UpdateConfig/*.h'
        updateconfig.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/UpdateConfig/*'
    end
    request.subspec 'CommonTag' do |commontag|
        commontag.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/CommonTag/*.h'
        commontag.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/CommonTag/*'
    end
    request.subspec 'DecorationStage' do |decorationstage|
        decorationstage.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/DecorationStage/*.h'
        decorationstage.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/DecorationStage/*'
    end
    request.subspec 'TopicCategory' do |topiccategory|
        topiccategory.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/TopicCategory/*.h'
        topiccategory.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/TopicCategory/*'
    end
    request.subspec 'GetCityList' do |getcitylist|
        getcitylist.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/GetCityList/*.h'
        getcitylist.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/GetCityList/*'
    end
    request.subspec 'CheckConfigUpdate' do |checkconfigupdate|
        checkconfigupdate.public_header_files = 'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/CheckConfigUpdate/*.h'
        checkconfigupdate.source_files =  'BaseKit/THKConfigFileManagerKit/THKConfigFileManagerKit/Classes/Request/CheckConfigUpdate/*'
    end
  end
  
  s.dependency 'YYCache', '1.0.4'
  s.dependency 'THKStartupConfigKit', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
end
