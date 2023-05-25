Pod::Spec.new do |s|
  s.name         = 'TYYWebImage'
  s.summary      = '基于YYWebImage调整目录'
  s.version      = '1.0.5'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYWebImage'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => 'dc37f9fd' }
  
  s.requires_arc = true
  s.source_files = 'TYYWebImage/YYWebImage/*.{h,m}', 'TYYWebImage/YYWebImage/Categories/*.{h,m}'
  s.public_header_files = 'TYYWebImage/YYWebImage/*.{h}', 'TYYWebImage/YYWebImage/Categories/*.{h}'
  s.private_header_files = 'TYYWebImage/YYWebImage/Categories/_*.{h}'
  s.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
  
  s.dependency 'TYYImage', '1.0.4'
  s.dependency 'YYCache'
  
end
