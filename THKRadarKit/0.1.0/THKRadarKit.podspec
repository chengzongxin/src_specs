#
# Be sure to run `pod lib lint THKRadarKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKRadarKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKRadarKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amby.qin' => 'amby.qin@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "3a042ef" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.libraries = ['z','stdc++','c++']

  s.resource_bundles = {
    'THKRadarKit' => ['BaseBusinessKit/THKRadarKit/README.md']
 }

    s.subspec 'TRadarNetwork' do |tradarnetwork|
      tradarnetwork.public_header_files = 'BaseBusinessKit/THKRadarKit/TRadarNetwork/**/*.h'
      tradarnetwork.source_files =  'BaseBusinessKit/THKRadarKit/TRadarNetwork/**/*'
      
      tradarnetwork.dependency 'TBTNetwork', '0.1.9'
    end
    
    s.subspec 'TRadarView' do |tradarview|
        
        tradarview.subspec 'View' do |view|
            view.public_header_files = 'BaseBusinessKit/THKRadarKit/TRadarView/View/**/*.h'
            view.source_files =  'BaseBusinessKit/THKRadarKit/TRadarView/View/**/*'
        end
        tradarview.subspec 'TRadarCommon' do |tradarcommon|
            tradarcommon.public_header_files = 'BaseBusinessKit/THKRadarKit/TRadarView/TRadarCommon/**/*.h'
            tradarcommon.source_files =  'BaseBusinessKit/THKRadarKit/TRadarView/TRadarCommon/**/*'
        end
        tradarview.subspec 'ViewController' do |viewcontroller|
          viewcontroller.public_header_files = 'BaseBusinessKit/THKRadarKit/TRadarView/ViewController/**/*.h'
          viewcontroller.source_files =  'BaseBusinessKit/THKRadarKit/TRadarView/ViewController/**/*'
        end
        
        tradarview.resource_bundles = {
          'THKRadarKit' => ['BaseBusinessKit/THKRadarKit/TRadarView/**/*.xib','BaseBusinessKit/THKRadarKit/TRadarView/**/*.json']
        }

        tradarview.dependency 'THKCustomHUD','0.1.5'
        #tradarview.dependency 'THKRadarKit/TRadarNetwork'
        tradarview.dependency 'THKWebDNSKit','0.1.0'
        tradarview.dependency 'THKRealTimeDataKit','0.1.0'
        tradarview.dependency 'Godeye','1.1.3'
        tradarview.dependency 'TMToast','1.0.0'
        tradarview.dependency 'TBTLog', '0.1.8'
        tradarview.dependency 'THKCustomToolKit','0.1.0'
        tradarview.dependency 'THKOSSManager','2.0.3'
        tradarview.dependency 'TMUICore','2.0.25'
        tradarview.dependency 'TMUIExtensions','2.0.25'

   end

   s.subspec 'AssistToolView' do |tooview|
    tooview.public_header_files = 'BaseBusinessKit/THKRadarKit/AssistToolView/*.h'
    tooview.source_files =  'BaseBusinessKit/THKRadarKit/AssistToolView/*'
    tooview.subspec 'MainListView' do |maiview|
      maiview.public_header_files = 'BaseBusinessKit/THKRadarKit/AssistToolView/MainListView/**/*.h'
      maiview.source_files =  'BaseBusinessKit/THKRadarKit/AssistToolView/MainListView/**/*'
    end
    tooview.subspec 'FloatingButton' do |button|
      button.public_header_files = 'BaseBusinessKit/THKRadarKit/AssistToolView/FloatingButton/**/*.h'
      button.source_files =  'BaseBusinessKit/THKRadarKit/AssistToolView/FloatingButton/**/*'
    end
    tooview.resource_bundles = {
      'AssistToolView' => ['BaseBusinessKit/THKRadarKit/AssistToolView/**/*.png']
    }
    #tooview.dependency 'THKRadarKit/TRadarView'
    tooview.dependency 'TRouter', '1.0.0'
    tooview.dependency 'TMUIExtensions', '2.0.25'
    
  end
  
  s.dependency 'THKCustomViewKit','0.1.0'
  s.dependency 'THKBusinessToolKit', '0.1.0'

end
