Pod::Spec.new do |spec|
  spec.name         = "TLookinServer"
  spec.version      = "1.0.4"
  spec.summary      = "封装Lookin."
  spec.description  = "Embed this framework into your iOS project to enable Lookin mac app."
  spec.homepage     = "https://lookin.work"
  spec.license      = "GPL-3.0"
  spec.author       = { "Li Kai" => "lookin@lookin.work" }
  spec.ios.deployment_target  = "9.0"
  spec.tvos.deployment_target  = '9.0'
  
  spec.source       = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "5f46b6dc"}
  spec.framework  = "UIKit"
  spec.requires_arc = true
  spec.source_files = 'TLookinServer/Src/**/*'
end
