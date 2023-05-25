#
# Be sure to run `pod lib lint THKCardComponentKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'THKCardComponentKit'
  s.version          = '0.1.0'
  s.summary          = '瀑布流组件'

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

  s.source_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/*'
#  s.static_framework = true
  s.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/THKCardComponentKit.h'

  s.subspec 'Resource' do |rc|
    rc.resource_bundles = {
      'THKCardComponentKitResource' => ['BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Assets/*', 'BaseBusinessKit/THKCardComponentKit/README.md']
    }
  end

  s.subspec 'CollectionViewLayout' do |collectionviewlayout|
    collectionviewlayout.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/CollectionViewLayout/*.h'
    collectionviewlayout.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/CollectionViewLayout/*'
  end

  s.subspec 'Protocols' do |protocols|
    protocols.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/*.h'
    protocols.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/*'
    protocols.subspec 'CellDataProtocols' do |cellDataProtocols|
      cellDataProtocols.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/CellDataProtocols/*.h'
      cellDataProtocols.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/CellDataProtocols/*'
    end
    protocols.subspec 'TMCardComponentCellDataModel' do |tmCardComponentCellDataModel|
      tmCardComponentCellDataModel.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/TMCardComponentCellDataModel/*.h'
      tmCardComponentCellDataModel.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Protocols/TMCardComponentCellDataModel/*'
    end
  end

  s.subspec 'Cells' do |cells|
    cells.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/*.h'
    cells.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/*'
    cells.subspec 'BaseAbstractCardCell' do |baseabstractcardcell|
        baseabstractcardcell.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/BaseAbstractCardCell/*.h'
        baseabstractcardcell.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/BaseAbstractCardCell/*'
    end
    cells.subspec 'CardComponentCells' do |cardcomponentcells|
        cardcomponentcells.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/*.h'
        cardcomponentcells.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/*'
        cardcomponentcells.subspec 'TMCardComponentScrollAdsCell' do |tmcardcomponentscrolladscell|
            tmcardcomponentscrolladscell.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentScrollAdsCell/*.h'
            tmcardcomponentscrolladscell.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentScrollAdsCell/*'
            tmcardcomponentscrolladscell.subspec 'views' do |views|
                views.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentScrollAdsCell/views/*.h'
                views.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentScrollAdsCell/views/*'
            end
        end
        cardcomponentcells.subspec 'DecorateTags' do |decoratetags|
            decoratetags.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/DecorateTags/*.h'
            decoratetags.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/DecorateTags/*'
        end

        cardcomponentcells.subspec 'TMCardComponentSearchCell' do |searchCell|
          searchCell.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentSearchCell/*.h'
          searchCell.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentSearchCell/*'
        end
        cardcomponentcells.subspec 'TMCardComponentSearchCell' do |searchCell|
          searchCell.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentSearchCell/*.h'
          searchCell.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentSearchCell/*'
        end
        cardcomponentcells.subspec 'TMCardComponentRecommendTagsCell' do |tmcardcomponentrecommendtagscell|
            tmcardcomponentrecommendtagscell.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentRecommendTagsCell/*.h'
            tmcardcomponentrecommendtagscell.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/TMCardComponentRecommendTagsCell/*'
        end
        cardcomponentcells.subspec 'views' do |views|
            views.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/*.h'
            views.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/*'
            views.subspec 'TMCardLiveStatusView' do |tmcardlivestatusview|
                tmcardlivestatusview.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/TMCardLiveStatusView/*.h'
                tmcardlivestatusview.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/TMCardLiveStatusView/*'
            end
            views.subspec 'THKTextTagLabel' do |thktexttaglabel|
                thktexttaglabel.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/THKTextTagLabel/*.h'
                thktexttaglabel.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Cells/CardComponentCells/views/THKTextTagLabel/*'
            end
        end
    end
  end

  s.subspec 'Core' do |core|
    core.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Core/*.h'
    core.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Core/*'
  end

  s.subspec 'Other' do |other|
    other.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Other/*.h'
    other.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/Other/*'
  end

  s.subspec 'PublicHelper' do |publichelper|
    publichelper.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/PublicHelper/*.h'
    publichelper.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/PublicHelper/*'
  end

  s.subspec 'BaseListViewController' do |baselistviewcontroller|
    baselistviewcontroller.public_header_files = 'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/BaseListViewController/*.h'
    baselistviewcontroller.source_files =  'BaseBusinessKit/THKCardComponentKit/THKCardComponentKit/Classes/BaseListViewController/*'
  end


  s.prefix_header_contents = '#import <THKCardComponentKit/THKCardComponentKit_BaseDefine.h>'

  s.dependency 'THKMacroKit', '0.1.0'
  s.dependency 'THKBaseUIKit', '0.1.0'
  s.dependency 'THKNetworkKit', '0.1.0'
  s.dependency 'TRouter', '1.0.0'
  s.dependency 'THKCustomViewKit/CustomView', '0.1.0'
  s.dependency 'TUserAvatarView', '0.0.1'
  s.dependency 'TBTLog', '0.1.8'
  s.dependency 'THKSafeKit', '0.1.0'
  s.dependency 'TMUIExtensions', '2.0.25'
  s.dependency 'THKBusinessToolKit', '0.1.0'
  s.dependency 'THKInteractiveKit', '0.1.0'

end
