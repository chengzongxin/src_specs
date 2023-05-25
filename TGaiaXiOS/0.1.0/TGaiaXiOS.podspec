#
# Be sure to run `pod lib lint TGaiaXiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TGaiaXiOS'
  s.version          = '0.1.0'
  s.summary          = 'TGaiaXiOS.动态化组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/collen.zhang/TGaiaXiOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'collen.zhang' => 'collen.zhang@corp.to8to.com' }
  s.source           = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => "43f9afa" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files  = 'TGaiaXiOS/TGaiaXiOS/Classes/*'
  s.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/GaiaXiOS.h'
  
  s.vendored_libraries = 'TGaiaXiOS/TGaiaXiOS/Classes/**/*.{a}'
  s.subspec 'Impl' do |impl|
      impl.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Impl/*.h'
      impl.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Impl/*'
      impl.subspec 'Interface' do |interface|
          interface.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Impl/Interface/*.h'
          interface.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Impl/Interface/*'
      end
    end

    s.subspec 'Core' do |core|
      core.subspec 'Creator' do |creator|
          creator.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Core/Creator/*.h'
          creator.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/Creator/*'
      end
      core.subspec 'StretchKit' do |stretchkit|
          stretchkit.subspec 'Classes' do |classes|
              classes.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Core/StretchKit/Classes/*.h'
              classes.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/StretchKit/Classes/*'
          end
          stretchkit.subspec 'Libraries' do |libraries|
            libraries.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/StretchKit/libraries/*'
          end
          stretchkit.subspec 'Headers' do |headers|
              headers.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Core/StretchKit/Headers/*.h'
              headers.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/StretchKit/Headers/*'
          end
      end
      core.subspec 'Context' do |context|
          context.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Core/Context/*.h'
          context.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/Context/*'
      end
      core.subspec 'Render' do |render|
          render.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Core/Render/*.h'
          render.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Core/Render/*'
      end
    end

    s.subspec 'Category' do |category|
      category.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Category/*.h'
      category.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Category/*'
    end

    s.subspec 'Template' do |template|
      template.subspec 'Cache' do |cache|
          cache.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Template/Cache/*.h'
          cache.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Template/Cache/*'
      end
      template.subspec 'CssParser' do |cssparser|
          cssparser.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Template/CssParser/*.h'
          cssparser.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Template/CssParser/*'
      end
      template.subspec 'Register' do |register|
          register.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Template/Register/*.h'
          register.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Template/Register/*'
      end
      template.subspec 'Loader' do |loader|
          loader.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Template/Loader/*.h'
          loader.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Template/Loader/*'
      end
    end

    s.subspec 'Component' do |component|
      component.subspec 'Animation' do |animation|
          animation.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Component/Animation/*.h'
          animation.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Component/Animation/*'
      end
      component.subspec 'View' do |view|
          view.subspec 'Protocal' do |protocal|
              protocal.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Protocal/*.h'
              protocal.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Protocal/*'
          end
          view.subspec 'Basic' do |basic|
              basic.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Basic/*.h'
              basic.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Basic/*'
          end
          view.subspec 'Container' do |container|
              container.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Container/*.h'
              container.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Component/View/Container/*'
          end
      end
      component.subspec 'Node' do |node|
          node.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Component/Node/*.h'
          node.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Component/Node/*'
      end
    end

    s.subspec 'Binding' do |binding|
      binding.subspec 'Protocol' do |protocol|
          protocol.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Protocol/*.h'
          protocol.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Protocol/*'
      end
      binding.subspec 'Expression' do |expression|
          expression.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Expression/*.h'
          expression.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Expression/*'
          expression.subspec 'GXAnalyzeCore' do |gxanalyzecore|
              gxanalyzecore.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Expression/GXAnalyzeCore/*.h'
              gxanalyzecore.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Expression/GXAnalyzeCore/*'
          end
      end
      binding.subspec 'Data' do |data|
          data.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Data/*.h'
          data.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Data/*'
      end
      binding.subspec 'Event' do |event|
          event.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Event/*.h'
          event.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Binding/Event/*'
      end
    end

    s.subspec 'Utilities' do |utilities|
      utilities.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Utilities/*.h'
      utilities.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Utilities/*'
      utilities.subspec 'FileHandler' do |filehandler|
          filehandler.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Utilities/FileHandler/*.h'
          filehandler.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Utilities/FileHandler/*'
      end
    end

    s.subspec 'Macro' do |macro|
      macro.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Macro/*.h'
      macro.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Macro/*'
    end

    s.subspec 'Engine' do |engine|
      engine.public_header_files = 'TGaiaXiOS/TGaiaXiOS/Classes/Engine/*.h'
      engine.source_files =  'TGaiaXiOS/TGaiaXiOS/Classes/Engine/*'
    end
  s.xcconfig      = { "ENABLE_BITCODE" => "NO" }
  s.requires_arc  = true

  s.library = 'c++'

#  s.dependency 'YYText'
#  s.dependency 'SDWebImage'
  s.dependency 'GaiaMotionCurve'
  s.dependency 'TYYKit'
  s.dependency 'YYWebImage', '1.0.5'
  s.dependency 'YYImage/WebP'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7 x86_64' }
  
  # s.resource_bundles = {
  #   'TGaiaXiOS' => ['TGaiaXiOS/TGaiaXiOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
