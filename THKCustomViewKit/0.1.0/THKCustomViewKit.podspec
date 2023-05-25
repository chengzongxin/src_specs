#
# Be sure to run `pod lib lint THKCustomViewKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCustomViewKit'
  s.version          = '0.1.0'
  s.summary          = '公共view'

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
  s.author           = { 'ben.gan' => 'ben.gan@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => "ed29c8d738492b3ec9fc8dee031aef7dd7dc9170" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  s.ios.deployment_target = '9.0'
  s.dependency 'Masonry','1.1.0'

  s.source_files = 'BaseKit/THKCustomViewKit/*.{h,m}'
  s.public_header_files = 'BaseKit/THKCustomViewKit/THKCustomViewKit.h'

  s.subspec 'Resource' do |ss|
    ss.resource_bundles = {
      'THKCustomViewKit' => ['BaseKit/THKCustomViewKit/Resource/*','BaseKit/THKCustomViewKit/README.md']
    }
  end

  s.subspec 'ThirdView' do |thirdview|
    thirdview.public_header_files = 'BaseKit/THKCustomViewKit/ThirdView/*.h'
    thirdview.source_files =  'BaseKit/THKCustomViewKit/ThirdView/*'
    thirdview.subspec 'BTScrollBallView' do |btscrollballview|
        btscrollballview.public_header_files = 'BaseKit/THKCustomViewKit/ThirdView/BTScrollBallView/*.h'
        btscrollballview.source_files =  'BaseKit/THKCustomViewKit/ThirdView/BTScrollBallView/*'
    end
    thirdview.subspec 'ZoomFlowImageBrower' do |zoomflowimagebrower|
        zoomflowimagebrower.public_header_files = 'BaseKit/THKCustomViewKit/ThirdView/ZoomFlowImageBrower/*.h'
        zoomflowimagebrower.source_files =  'BaseKit/THKCustomViewKit/ThirdView/ZoomFlowImageBrower/*'
        zoomflowimagebrower.dependency 'YYWebImage', '1.0.5'
    end
    thirdview.subspec 'ZYPageControl' do |zypagecontrol|
        zypagecontrol.public_header_files = 'BaseKit/THKCustomViewKit/ThirdView/ZYPageControl/*.h'
        zypagecontrol.source_files =  'BaseKit/THKCustomViewKit/ThirdView/ZYPageControl/*'
    end
    thirdview.subspec 'PopOverMenu' do |popovermenu|
        popovermenu.public_header_files = 'BaseKit/THKCustomViewKit/ThirdView/PopOverMenu/*.h'
        popovermenu.source_files =  'BaseKit/THKCustomViewKit/ThirdView/PopOverMenu/*'
    end
  end

  s.subspec 'TBTCustomView' do |tbtcustomview|
    tbtcustomview.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/*.h'
    tbtcustomview.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/*'
    tbtcustomview.dependency 'THKMacroKit', '0.1.0'
    tbtcustomview.dependency 'YYWebImage', '1.0.5'
    tbtcustomview.dependency 'TMUIExtensions', '2.0.25'
    tbtcustomview.dependency 'THKCustomViewKit/TGallery', '0.1.0'
    tbtcustomview.dependency 'MBProgressHUD', '0.9.2'
    tbtcustomview.dependency 'THKCustomHUD', '0.1.5'
    tbtcustomview.dependency 'TMToast', '1.0.0'

    tbtcustomview.prefix_header_contents = <<-DESC
    #import <Masonry/Masonry.h>
    #import <THKMacroKit/THKMacroKit.h>
    #import "TBasicView.h"
    #import <TMUIExtensions/TMUIExtensions.h>
    #import <YYImage/YYAnimatedImageView.h>
                                        DESC

    tbtcustomview.subspec 'Category' do |category|
        category.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/Category/**/*.h'
        category.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/Category/**/*'
    end
    tbtcustomview.subspec 'Common' do |common|
        common.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/Common/*.h'
        common.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/Common/*'
    end
    tbtcustomview.subspec 'BasicClass' do |basicclass|
        basicclass.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/BasicClass/*.h'
        basicclass.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/BasicClass/*'
    end
    tbtcustomview.subspec 'CustomView' do |customview|
        customview.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/CustomView/*.h'
        customview.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/CustomView/*'
    end
    tbtcustomview.subspec 'ThirdParty' do |thirdparty|
        thirdparty.subspec 'Download-Indicator' do |ss|
            ss.public_header_files = 'BaseKit/THKCustomViewKit/TBTCustomView/ThirdParty/Download-Indicator/*.h'
            ss.source_files =  'BaseKit/THKCustomViewKit/TBTCustomView/ThirdParty/Download-Indicator/*'
        end
    end
  end

  s.subspec 'CustomView' do |customview|
    customview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/*.h'
    customview.source_files =  'BaseKit/THKCustomViewKit/CustomView/*'
    customview.dependency 'THKMacroKit', '0.1.0'
    customview.dependency 'TMUIExtensions','2.0.25'
    customview.dependency 'ReactiveObjC', '3.1.1'
    customview.dependency 'IQKeyboardManager', '5.0.8'
    customview.dependency 'YYWebImage', '1.0.5'
    customview.dependency 'THKCustomToolKit', '0.1.0'
    customview.dependency 'THKCustomHUD', '0.1.5'
    customview.dependency 'TMToast', '1.0.0'
    #customview.dependency 'THKCustomViewKit/TBTCustomView'

    customview.prefix_header_contents = <<-DESC
    #import <Masonry/Masonry.h>
    #import <THKMacroKit/THKMacroKit.h>
    #import <TMUIExtensions/TMUIExtensions.h>
    #import <ReactiveObjC/ReactiveObjC.h>
    #import <YYImage/YYAnimatedImageView.h>
    #import "UIImageView+TCategory.h"
                                        DESC

    customview.subspec 'THKScoreStarView' do |scorestarview|
        scorestarview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKScoreStarView/*.h'
        scorestarview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKScoreStarView/*'

        scorestarview.subspec 'Resource' do |resource|
            scorestarview.resource_bundles = {
            'THKScoreStarViewAssets' => ['BaseKit/THKCustomViewKit/CustomView/THKScoreStarView/Resource/*.png']
            }
        end
    end
    customview.subspec 'THKPickerView' do |thkpickerview|
        thkpickerview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKPickerView/*.h'
        thkpickerview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKPickerView/*'
    end
    customview.subspec 'TButtonsConditionView' do |tbuttonsconditionview|
        tbuttonsconditionview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TButtonsConditionView/*.h'
        tbuttonsconditionview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TButtonsConditionView/*'
    end
    customview.subspec 'THKPassWordTextField' do |passwordtextfield|
        passwordtextfield.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKPassWordTextField/*.h'
        passwordtextfield.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKPassWordTextField/*'
    end
    customview.subspec 'THKImageTitleTagView' do |thkimagetitletagview|
        thkimagetitletagview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKImageTitleTagView/*.h'
        thkimagetitletagview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKImageTitleTagView/*'
    end
    customview.subspec 'THKGradientCircleProgressView' do |gradientcircleprogressview|
        gradientcircleprogressview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKGradientCircleProgressView/*.h'
        gradientcircleprogressview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKGradientCircleProgressView/*'
    end
    customview.subspec 'THKImageAndTextActionButton' do |thkimageandtextactionbutton|
        thkimageandtextactionbutton.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKImageAndTextActionButton/*.h'
        thkimageandtextactionbutton.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKImageAndTextActionButton/*'
    end
    customview.subspec 'THKActionSheetView' do |thkactionsheetview|
        thkactionsheetview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKActionSheetView/*.h'
        thkactionsheetview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKActionSheetView/*'
    end
    customview.subspec 'THKTagListView' do |thktaglistview|
        thktaglistview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKTagListView/*.h'
        thktaglistview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKTagListView/*'
    end
    customview.subspec 'TBInsetLabel' do |tbinsetlabel|
        tbinsetlabel.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TBInsetLabel/*.h'
        tbinsetlabel.source_files =  'BaseKit/THKCustomViewKit/CustomView/TBInsetLabel/*'
    end
    customview.subspec 'THKLimitTextView' do |tinteractivetextview|
        tinteractivetextview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKLimitTextView/*.h'
        tinteractivetextview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKLimitTextView/*'
    end
    customview.subspec 'THKPassWordView' do |passwordview|
        passwordview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKPassWordView/*.h'
        passwordview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKPassWordView/*'
    end
    customview.subspec 'TActionSheetPickerController' do |tactionsheetpickercontroller|
        tactionsheetpickercontroller.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TActionSheetPickerController/*.h'
        tactionsheetpickercontroller.source_files =  'BaseKit/THKCustomViewKit/CustomView/TActionSheetPickerController/*'
    end
    customview.subspec 'TDatePicker' do |tdatepicker|
        tdatepicker.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TDatePicker/*.h'
        tdatepicker.source_files =  'BaseKit/THKCustomViewKit/CustomView/TDatePicker/*'
    end
    customview.subspec 'TMUICycleCardView' do |tmuicyclecardview|
        tmuicyclecardview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TMUICycleCardView/*.h'
        tmuicyclecardview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TMUICycleCardView/*'
    end
    customview.subspec 'TMTagsCloudView' do |tmtagscloudview|
        tmtagscloudview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TMTagsCloudView/*.h'
        tmtagscloudview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TMTagsCloudView/*'
    end
    
    customview.subspec 'ImageTitleButton' do |imagetitlebutton|
        imagetitlebutton.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/ImageTitleButton/*.h'
        imagetitlebutton.source_files =  'BaseKit/THKCustomViewKit/CustomView/ImageTitleButton/*'
    end
    customview.subspec 'TMainPageNavigationTitleView' do |tmainpagenavigationtitleview|
        tmainpagenavigationtitleview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TMainPageNavigationTitleView/*.h'
        tmainpagenavigationtitleview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TMainPageNavigationTitleView/*'
    end
    customview.subspec 'THKPageScrollView' do |pagescrollview|
        pagescrollview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKPageScrollView/*.h'
        pagescrollview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKPageScrollView/*'
    end
    customview.subspec 'THKPageViewController' do |thkpageviewcontroller|
        thkpageviewcontroller.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKPageViewController/*.h'
        thkpageviewcontroller.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKPageViewController/*'
    end
    customview.subspec 'THKRotationRateImageView' do |thkrotationrateimageView|
        thkrotationrateimageView.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKRotationRateImageView/*.h'
        thkrotationrateimageView.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKRotationRateImageView/*'
        thkrotationrateimageView.frameworks = 'CoreMotion'
    end
    customview.subspec 'TEmojiView' do |temojiview|
        temojiview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TEmojiView/*.h'
        temojiview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TEmojiView/*'
        temojiview.resource = ['BaseKit/THKCustomViewKit/CustomView/TEmojiView/Assets/**/*']
    end
    customview.subspec 'THKCustomCornerRadiusView' do |thkcustomcornerradiusview|
        thkcustomcornerradiusview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKCustomCornerRadiusView/*.h'
        thkcustomcornerradiusview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKCustomCornerRadiusView/*'
    end
    customview.subspec 'THKListRefresh' do |thklistrefresh|
        thklistrefresh.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKListRefresh/*.h'
        thklistrefresh.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKListRefresh/*'
        #thklistrefresh.dependency 'THKCustomViewKit/TRefresh'
        thklistrefresh.dependency 'Reachability', '3.2'
    end
    
    customview.subspec 'THKNestTableView' do |thknesttableview|
       thknesttableview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKNestTableView/*.h'
       thknesttableview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKNestTableView/*'
       thknesttableview.dependency 'Aspects', '1.4.1'
       thknesttableview.frameworks = 'WebKit'
    end
    customview.subspec 'TCodeCell' do |tcodecell|
       tcodecell.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TCodeCell/*.h'
       tcodecell.source_files =  'BaseKit/THKCustomViewKit/CustomView/TCodeCell/*'
       #tcodecell.dependency 'THKCustomViewKit/TBasicView'
    end
    customview.subspec 'THKCustomAlertView' do |ss|
       ss.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKCustomAlertView/*.h'
       ss.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKCustomAlertView/*'
       ss.dependency 'TMUIComponents','2.0.25'
    end
    customview.subspec 'THKCircleProgressView' do |cp|
       cp.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKCircleProgressView/*.h'
       cp.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKCircleProgressView/*'
    end
    customview.subspec 'THKBannerView' do |thkbannerview|
       thkbannerview.dependency 'THKSafeKit', '0.1.0'
       thkbannerview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKBannerView/*.h'
       thkbannerview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKBannerView/*'
    end
    customview.subspec 'TAlertTipController' do |talerttipcontroller|
       talerttipcontroller.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TAlertTipController/*.h'
       talerttipcontroller.source_files =  'BaseKit/THKCustomViewKit/CustomView/TAlertTipController/*'
       talerttipcontroller.resource_bundles = {
           'TAlertTipController' => ['BaseKit/THKCustomViewKit/CustomView/TAlertTipController/*.xib']
       }
    end
    customview.subspec 'THKConditionView' do |conditionview|
        conditionview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/THKConditionView/**/*.h'
        conditionview.source_files =  'BaseKit/THKCustomViewKit/CustomView/THKConditionView/**/*'
    end
    customview.subspec 'TPreviewBigImg' do |preview|
        preview.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/TPreviewBigImg/**/*.h'
        preview.source_files =  'BaseKit/THKCustomViewKit/CustomView/TPreviewBigImg/**/*'
        preview.dependency 'Godeye','1.1.3'
        preview.dependency 'TMUICore','2.0.25'
    end

    customview.subspec 'CheckWifiAlert' do |wifialert|
        wifialert.public_header_files = 'BaseKit/THKCustomViewKit/CustomView/CheckWifiAlert/**/*.h'
        wifialert.source_files =  'BaseKit/THKCustomViewKit/CustomView/CheckWifiAlert/**/*'
        wifialert.dependency 'Reachability','3.2'
        wifialert.dependency 'TMToast','1.0.0'
    end

  end

  s.subspec 'TBasicView' do |ss|
    ss.public_header_files = 'BaseKit/THKCustomViewKit/TBasicView/*.h'
    ss.source_files =  'BaseKit/THKCustomViewKit/TBasicView/*'
  end
  
  s.subspec 'TRefresh' do |trefresh|

    trefresh.subspec 'Resource' do |resource|
        resource.resource_bundles = {
            'TRefreshAssets' => ['BaseKit/THKCustomViewKit/TRefresh/Resource/*']
        }
    end
    trefresh.public_header_files = 'BaseKit/THKCustomViewKit/TRefresh/*.h'
    trefresh.source_files =  'BaseKit/THKCustomViewKi/TRefresh/*'
    trefresh.dependency "TMJRefresh"
    trefresh.dependency 'Lottie', '2.5.3'
    trefresh.dependency 'THKMacroKit', '0.1.0'
    trefresh.dependency 'TMUICore','2.0.25'
    #trefresh.dependency 'THKCustomViewKit/TBTCustomView'
    trefresh.dependency 'THKBaseNetwork', '0.3.1'
    trefresh.dependency 'TMEmptyView', '1.0.0'
    trefresh.dependency 'THKCustomViewKit/TBTCustomView', '0.1.0'

    trefresh.prefix_header_contents = <<-DESC
    #import <Masonry/Masonry.h>
    #import <THKMacroKit/THKMacroKit.h>
                                         DESC
    trefresh.subspec 'THKRefreshUIKit' do |thkrefreshuikit|
        thkrefreshuikit.public_header_files = 'BaseKit/THKCustomViewKit/TRefresh/THKRefreshUIKit/*.h'
        thkrefreshuikit.source_files =  'BaseKit/THKCustomViewKit/TRefresh/THKRefreshUIKit/*'
    end
    trefresh.subspec 'THKOldRefresh' do |thkoldrefresh|
        thkoldrefresh.public_header_files = 'BaseKit/THKCustomViewKit/TRefresh/THKOldRefresh/*.h'
        thkoldrefresh.source_files =  'BaseKit/THKCustomViewKit/TRefresh/THKOldRefresh/*'
    end
    trefresh.subspec 'PrivateUI' do |privateui|
        privateui.public_header_files = 'BaseKit/THKCustomViewKit/TRefresh/PrivateUI/*.h'
        privateui.source_files =  'BaseKit/THKCustomViewKit/TRefresh/PrivateUI/*'
    end
    trefresh.subspec 'THKMJ' do |thkmj|
        thkmj.public_header_files = 'BaseKit/THKCustomViewKit/TRefresh/THKMJ/*.h'
        thkmj.source_files =  'BaseKit/THKCustomViewKit/TRefresh/THKMJ/*'
    end
  end

  s.subspec 'THKSearchBaseView' do |ss|
    ss.public_header_files = 'BaseKit/THKCustomViewKit/THKSearchBaseView/**/*.h'
    ss.source_files =  'BaseKit/THKCustomViewKit/THKSearchBaseView/**/*'
    ss.dependency 'THKMacroKit', '0.1.0'
    ss.dependency 'TMUIComponents', '2.0.25'
    ss.dependency 'THKCustomToolKit', '0.1.0'
    #ss.dependency 'THKCustomViewKit/TRefresh'

    ss.prefix_header_contents = <<-DESC
    #import <THKMacroKit/THKMacroKit.h>
                                         DESC
  end
  #TGallery
  s.subspec 'TGallery' do |ss|
    ss.public_header_files = 'BaseKit/THKCustomViewKit/TGallery/**/*.h'
    ss.source_files =  'BaseKit/THKCustomViewKit/TGallery/**/*'
    ss.dependency 'THKMacroKit', '0.1.0'
    ss.dependency 'TMUIExtensions', '2.0.25'
    ss.dependency 'TMUICore', '2.0.25'
    ss.resource_bundles = {
        'TGallery' => ['BaseKit/THKCustomViewKit/TGallery/**/*.xib']
    }
    ss.prefix_header_contents = <<-DESC
    #import <THKMacroKit/THKMacroKit.h>
                                         DESC
  end

  s.dependency 'THKBaseKit', '0.1.0'

end
