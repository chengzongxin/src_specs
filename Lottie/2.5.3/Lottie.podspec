Pod::Spec.new do |s|
  s.name             = "Lottie"
  s.version          = "2.5.3"
  s.summary          = "Lottie动画Objective-C实现"
  s.description      = "基于Lottie官方源码调整目录封装"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "turing.xiong" => "turing.xiong@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "6c9c967" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'Lottie/Classes/*.{h,m}'
  
  s.subspec 'AnimatableLayers' do |sub|
    sub.source_files = 'Lottie/Classes/AnimatableLayers/**/*'
  end
  
  s.subspec 'AnimatableProperties' do |sub|
    sub.source_files = 'Lottie/Classes/AnimatableProperties/**/*'
  end
  
  s.subspec 'Extensions' do |sub|
    sub.source_files = 'Lottie/Classes/Extensions/**/*'
  end
  
  s.subspec 'MacCompatibility' do |sub|
    sub.source_files = 'Lottie/Classes/MacCompatibility/**/*'
  end
  
  s.subspec 'Models' do |sub|
    sub.source_files = 'Lottie/Classes/Models/**/*'
  end
  
  s.subspec 'Private' do |sub|
    sub.source_files = 'Lottie/Classes/Private/**/*'
  end
  
  s.subspec 'PublicHeaders' do |sub|
    sub.source_files = 'Lottie/Classes/PublicHeaders/**/*'
  end
  
  s.subspec 'RenderSystem' do |sub|
    sub.source_files = 'Lottie/Classes/RenderSystem/**/*'
  end
    
  
end
