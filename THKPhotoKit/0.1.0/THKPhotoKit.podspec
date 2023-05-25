#
# Be sure to run `pod lib lint THKPhotoKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKPhotoKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of THKPhotoKit.'

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

  s.source_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/*'
  s.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/*.h'
  
  s.subspec 'ImageEffect' do |imageeffect|
    imageeffect.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/*.h'
    imageeffect.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/*'
    imageeffect.subspec 'ViewModel' do |viewmodel|
        viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/ViewModel/*.h'
        viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/ViewModel/*'
    end
    imageeffect.subspec 'Handle' do |handle|
        handle.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Handle/*.h'
        handle.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Handle/*'
    end
    imageeffect.subspec 'Crop' do |crop|
        crop.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/*.h'
        crop.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/*'
        crop.subspec 'ViewModel' do |viewmodel|
            viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/ViewModel/*.h'
            viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/ViewModel/*'
        end
        crop.subspec 'View' do |view|
            view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/View/*.h'
            view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/View/*'
            view.subspec 'LEGOCrop' do |legocrop|
                legocrop.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/View/LEGOCrop/*.h'
                legocrop.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Crop/View/LEGOCrop/*'
            end
        end
    end
    imageeffect.subspec 'Sticker' do |sticker|
        sticker.subspec 'ViewModel' do |viewmodel|
            viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/ViewModel/*.h'
            viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/ViewModel/*'
        end
        sticker.subspec 'Manager' do |manager|
            manager.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Manager/*.h'
            manager.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Manager/*'
        end
        sticker.subspec 'Common' do |common|
            common.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/*.h'
            common.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/*'
            common.subspec 'Basic' do |basic|
                basic.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Basic/*.h'
                basic.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Basic/*'
            end
            common.subspec 'Protocol' do |protocol|
                protocol.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/*.h'
                protocol.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/*'
                protocol.subspec 'BasicMoel' do |basicmoel|
                    basicmoel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/BasicMoel/*.h'
                    basicmoel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/BasicMoel/*'
                end
                protocol.subspec 'Model' do |model|
                    model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/Model/*.h'
                    model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/Model/*'
                end
                protocol.subspec 'View' do |view|
                    view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/View/*.h'
                    view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Common/Protocol/View/*'
                end
            end
        end
        sticker.subspec 'VC' do |vc|
        end
        sticker.subspec 'View' do |view|
        end
        sticker.subspec 'Tool' do |tool|
            tool.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/*.h'
            tool.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/*'
            tool.subspec 'ColorImageTool' do |colorimagetool|
                colorimagetool.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorImageTool/*.h'
                colorimagetool.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorImageTool/*'
            end
            tool.subspec 'ColorTextTool' do |colortexttool|
                colortexttool.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/*.h'
                colortexttool.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/*'
                colortexttool.subspec 'ViewModel' do |viewmodel|
                    viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/ViewModel/*.h'
                    viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/ViewModel/*'
                end
                colortexttool.subspec 'Model' do |model|
                    model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/Model/*.h'
                    model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/Model/*'
                end
                colortexttool.subspec 'View' do |view|
                    view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/View/*.h'
                    view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/ColorTextTool/View/*'
                end
            end
            tool.subspec 'CustomTextTool' do |customtexttool|
                customtexttool.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/*.h'
                customtexttool.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/*'
                customtexttool.subspec 'ViewModel' do |viewmodel|
                    viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/ViewModel/*.h'
                    viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/ViewModel/*'
                end
                customtexttool.subspec 'Model' do |model|
                    model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/Model/*.h'
                    model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/Model/*'
                end
                customtexttool.subspec 'View' do |view|
                    view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/View/*.h'
                    view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Sticker/Tool/CustomTextTool/View/*'
                end
            end
        end
    end
    imageeffect.subspec 'Common' do |common|
        common.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Common/*.h'
        common.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Common/*'
    end
    imageeffect.subspec 'VC' do |vc|
    end
    imageeffect.subspec 'View' do |view|
        view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/View/*.h'
        view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/View/*'
    end
    imageeffect.subspec 'Filter' do |filter|
        filter.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/*.h'
        filter.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/*'
        filter.subspec 'ViewModel' do |viewmodel|
            viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/ViewModel/*.h'
            viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/ViewModel/*'
        end
        filter.subspec 'Other' do |other|
            other.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/Other/*.h'
            other.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/Other/*'
        end
        filter.subspec 'View' do |view|
            view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/View/*.h'
            view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/ImageEffect/Filter/View/*'
        end
    end
end
# s.subspec 'Animation' do |animation|
#     animation.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Animation/*.h'
#     animation.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Animation/*'
#     animation.subspec 'PushPopAsLocationToListTransition' do |pushpopaslocationtolisttransition|
#         pushpopaslocationtolisttransition.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Animation/PushPopAsLocationToListTransition/*.h'
#         pushpopaslocationtolisttransition.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Animation/PushPopAsLocationToListTransition/*'
#     end
# end
s.subspec 'VC' do |vc|
    vc.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/*.h'
    vc.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/*'
    vc.subspec 'Camera' do |camera|
        camera.subspec 'Manager' do |manager|
            manager.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/Manager/*.h'
            manager.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/Manager/*'
        end
        camera.subspec 'VC' do |vc|
            vc.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/VC/*.h'
            vc.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/VC/*'
        end
        camera.subspec 'Model' do |model|
            model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/Model/*.h'
            model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/Model/*'
        end
        camera.subspec 'View' do |view|
            view.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/View/*.h'
            view.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Camera/View/*'
        end
    end
    vc.subspec 'ShortVideo' do |shortvideo|
        shortvideo.subspec 'ViewModel' do |viewmodel|
            viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/ViewModel/*.h'
            viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/ViewModel/*'
        end
        shortvideo.subspec 'View' do |view|
            view.subspec 'CropView' do |cropview|
                cropview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/CropView/*.h'
                cropview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/CropView/*'
            end
            view.subspec 'TableViewCell' do |tableviewcell|
                tableviewcell.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/TableViewCell/*.h'
                tableviewcell.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/TableViewCell/*'
            end
            view.subspec 'CoverPickView' do |coverpickview|
                coverpickview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/CoverPickView/*.h'
                coverpickview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/CoverPickView/*'
            end
            view.subspec 'ControllerView' do |controllerview|
                controllerview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/ControllerView/*.h'
                controllerview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/ControllerView/*'
            end
            view.subspec 'ProgressView' do |progressview|
                progressview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/ProgressView/*.h'
                progressview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/View/ProgressView/*'
            end
        end
        shortvideo.subspec 'ViewController' do |viewcontroller|
            viewcontroller.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/ViewController/*.h'
            viewcontroller.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/ShortVideo/ViewController/*'
        end
    end
    vc.subspec 'Crop' do |crop|
        crop.subspec 'VC' do |vc|
            vc.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Crop/VC/*.h'
            vc.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Crop/VC/*'
        end
    end
    vc.subspec 'Album' do |album|
        album.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/*.h'
        album.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/*'
        album.subspec 'ViewModel' do |viewmodel|
            viewmodel.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/ViewModel/*.h'
            viewmodel.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/ViewModel/*'
        end
        album.subspec 'VC' do |vc|
            vc.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/VC/*.h'
            vc.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/VC/*'
        end
        album.subspec 'Model' do |model|
            model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/Model/*.h'
            model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/Model/*'
        end
        album.subspec 'View' do |view|
            view.subspec 'EditView' do |editview|
                editview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/EditView/*.h'
                editview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/EditView/*'
            end
            view.subspec 'FilterMenu' do |filtermenu|
                filtermenu.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/FilterMenu/*.h'
                filtermenu.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/FilterMenu/*'
            end
            view.subspec 'Preview' do |preview|
                preview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/Preview/*.h'
                preview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/Preview/*'
            end
            view.subspec 'ChooseView' do |chooseview|
                chooseview.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/ChooseView/*.h'
                chooseview.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/VC/Album/View/ChooseView/*'
            end
        end
    end
end
s.subspec 'Model' do |model|
    model.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Model/*.h'
    model.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Model/*'
end
s.subspec 'View' do |view|
    view.subspec 'TabBar' do |tabbar|
        tabbar.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/View/TabBar/*.h'
        tabbar.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/View/TabBar/*'
    end
end
s.subspec 'Nav' do |nav|
    nav.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Nav/*.h'
    nav.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Nav/*'
end
s.subspec 'Authorization' do |authorization|
    authorization.public_header_files = 'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Authorization/*.h'
    authorization.source_files =  'BaseBusinessKit/THKPhotoKit/THKPhotoKit/Classes/Authorization/*'
end


  
  s.resource_bundles = {
    'THKPhotoKit' => ['BaseBusinessKit/THKPhotoKit/README.md']
  }

  s.prefix_header_contents = '#import <THKPhotoKit/THKPhotoKit_BaseDefine.h>'

  s.dependency 'THKBaseNetwork', '0.3.1'
  s.dependency 'THKCustomViewKit', '0.1.0'
  s.dependency 'TMUIExtensions', '2.0.25'
  s.dependency 'THKAnimationKit', '0.1.0'
  s.dependency 'Godeye', '1.1.3'
  s.dependency 'THKBaseUIKit', '0.1.0'

  s.dependency 'GPUImage', '0.1.7'
  s.dependency 'TYYKit', '0.0.4'
  s.dependency 'SSZipArchive', '2.2.3'
  s.dependency 'RSKImageCropper', '2.2.3'

end
