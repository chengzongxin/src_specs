Pod::Spec.new do |s|
  s.name         = 'TYYKit'
  s.summary      = 'A collection of iOS components.'
  s.version      = '0.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'http://repo.we.com/ios/tbtrepo.git'
  s.platform     = :ios, '6.0'
  s.ios.deployment_target = '6.0'
  s.source       = { :git => 'http://repo.we.com/ios/tbtrepo.git', :commit => 'bd9d3d85' }
  
  s.requires_arc = true
  s.source_files = 'TYYKit/src/**/*.{h,m}'
  s.public_header_files = 'TYYKit/src/**/*.{h}'

  non_arc_files = 'TYYKit/src/Base/Foundation/NSObject+YYAddForARC.{h,m}', 'TYYKit/src/Base/Foundation/NSThread+YYAdd.{h,m}'
  s.ios.exclude_files = non_arc_files
  s.subspec 'no-arc' do |sna|
    sna.requires_arc = false
    sna.source_files = non_arc_files
  end

  s.libraries = 'z'
  s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
  
  s.dependency 'YYImage'


end
