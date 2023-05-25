#
# Be sure to run `pod lib lint THKAttentionKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKAttentionKit'
  s.version          = '0.1.0'
  s.summary          = '关注'

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

  s.source_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/*.h'
  
  s.subspec 'Network' do |network|
    network.subspec 'MyPageAttention' do |mypageattention|
        mypageattention.subspec 'MyPageAttentionRequest' do |mypageattentionrequest|
            mypageattentionrequest.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/MyPageAttention/MyPageAttentionRequest/*.h'
            mypageattentionrequest.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/MyPageAttention/MyPageAttentionRequest/*'
        end
        mypageattention.subspec 'AttentionTopic' do |attentiontopic|
            attentiontopic.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/MyPageAttention/AttentionTopic/*.h'
            attentiontopic.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/MyPageAttention/AttentionTopic/*'
        end
    end
    network.subspec 'AttentionModule' do |attentionmodule|
        attentionmodule.subspec 'AttentionNum' do |attentionnum|
            attentionnum.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/AttentionNum/*.h'
            attentionnum.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/AttentionNum/*'
        end
        attentionmodule.subspec 'AddFollow' do |addfollow|
            addfollow.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/AddFollow/*.h'
            addfollow.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/AddFollow/*'
        end
        attentionmodule.subspec 'FollowStatus' do |followstatus|
            followstatus.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/FollowStatus/*.h'
            followstatus.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/AttentionModule/FollowStatus/*'
        end
    end
    network.subspec 'CommunityFollowAndEdit' do |communityfollowandedit|
        communityfollowandedit.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/CommunityFollowAndEdit/*.h'
        communityfollowandedit.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Network/CommunityFollowAndEdit/*'
    end
  end

  s.subspec 'THKFocusButtonView' do |thkfocusbuttonview|
    thkfocusbuttonview.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/THKFocusButtonView/*.h'
    thkfocusbuttonview.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/THKFocusButtonView/*'
  end

  s.subspec 'Model' do |model|
    model.public_header_files = 'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Model/*.h'
    model.source_files =  'BaseBusinessKit/THKAttentionKit/THKAttentionKit/Classes/Model/*'
  end
  
  
 s.dependency 'THKBaseKit', '0.1.0'
 s.dependency 'THKNetworkKit', '0.1.0'
 s.dependency 'THKGuideAlertKit/THKCommentGuideView', '0.1.0'
 s.dependency 'THKModuleService', '0.1.0'
 s.dependency 'THKRealTimeDataKit', '0.1.0'
end
