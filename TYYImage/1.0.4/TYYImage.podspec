Pod::Spec.new do |s|
  s.name         = 'TYYImage'
  s.summary      = '基于YYImage修改目录结构'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYImage'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => '83521e66' }
  
  s.requires_arc = true
  #s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = 'TYYImage/YYImage/*.{h,m}'
    core.public_header_files = 'TYYImage/YYImage/*.{h}'
    core.libraries = 'z'
    core.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
  end
  
  s.subspec 'WebP' do |webp|
    webp.resource = ['TYYImage/Vendor/WebP.framework']
    #webp.dependency 'YYImage/Core'
    #webp.source_files = 'Vendor/WebP.framework'
    #webp.ios.vendored_frameworks = 'Vendor/WebP.framework'
  end

end
