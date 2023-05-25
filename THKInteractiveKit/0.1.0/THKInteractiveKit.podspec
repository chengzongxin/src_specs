#
# Be sure to run `pod lib lint THKInteractiveKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKInteractiveKit'
  s.version          = '0.1.0'
  s.summary          = '互动组件-库'

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
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "84f4a50c" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  s.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/THKInteractiveKit.h'
  
  s.resource_bundles = {
     'THKInteractiveKit' => ['BaseBusinessKit/THKInteractiveKit/README.md']
   }

  s.subspec 'View' do |v|
    v.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/*.h'
    v.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/*'
    v.subspec 'tools' do |tl|
      tl.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/tools/*.h'
      tl.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/tools/*'
      tl.subspec 'Resource' do |rc|
        rc.resource_bundles = {
          'InteractivePraiseAnimation' => ['BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/tools/Resource/*.json']
        }
      end
    end
    v.subspec 'UI' do |ui|
      ui.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/UI/*.h'
      ui.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/UI/*'
    end
    v.subspec 'Manager' do |ma|
      ma.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/Manager/*.h'
      ma.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/View/Manager/*'
    end
  end
  
  s.subspec 'LevelComment' do |lc|
    lc.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/*.h'
    lc.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/*'
    lc.subspec 'SecondComment' do |sc|
      sc.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/SecondComment/**/*.h'
      sc.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/SecondComment/**/*'
    end
    lc.subspec 'VC' do |vc|
      vc.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/VC/**/*.h'
      vc.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/VC/**/*'
    end
    lc.subspec 'View' do |v|
      v.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/View/*.h'
      v.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/View/*'
      v.subspec 'Cell' do |c|
        c.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/View/Cell/*.h'
        c.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/View/Cell/*'
      end
    end
    lc.subspec 'ViewModel' do |vm|
      vm.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/ViewModel/**/*.h'
      vm.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/ViewModel/**/*'
    end
    lc.subspec 'Extra' do |ex|
      ex.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/Extra/**/*.h'
      ex.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/LevelComment/Extra/**/*'
    end
  end
    
  s.subspec 'Model' do |m|
    m.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Model/**/*.h'
    m.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Model/**/*'
  end
  
  s.subspec 'Basic' do |bs|
    bs.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Basic/**/*.h'
    bs.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Basic/**/*'
  end
    
  s.subspec 'Other' do |b|
    b.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Other/**/*.h'
    b.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Other/**/*'
  end

  s.subspec 'Network' do |b|
    b.public_header_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Network/**/*.h'
    b.source_files = 'BaseBusinessKit/THKInteractiveKit/THKInteractiveKit/Classes/Network/**/*'
  end

  s.prefix_header_contents = '#import <THKInteractiveKit/THKInteractiveKit_BaseDefine.h>'

  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'THKCustomViewKit', '0.1.0'
  s.dependency 'THKCustomToolKit', '0.1.0'
  s.dependency 'THKAnimationKit', '0.1.0'
  s.dependency 'THKShareKit', '0.1.0'
  s.dependency 'THKRouterKit', '0.1.0'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'THKModuleService', '0.1.0'
  s.dependency 'THKGuideAlertKit', '0.1.0'
  s.dependency 'THKBusinessToolKit', '0.1.0'
  s.dependency 'THKAttentionKit', '0.1.0'
  s.dependency 'THKBusinessViewKit/THKIdentityView', '0.1.0'

  s.dependency 'TRouter', '1.0.0'
  s.dependency 'TYYKit', '0.0.4'
  s.dependency 'TUserAvatarView', '0.0.1'

end
