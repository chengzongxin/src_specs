Pod::Spec.new do |s|
  s.name             = "TRefresh"
  s.version          = "0.3.9"
  s.summary          = "旧版下拉刷新组件最后一个更新小版本--0.2.7版本，之后版本为正常更新升级"
  s.description      = "由MJRefresh修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "6af38cb" }
  s.platform     = :ios, '9.0'
  s.requires_arc = true

  s.source_files = 'TRefresh/Pod/Classes/*.{h,m}'
  s.subspec 'THKOldRefresh' do |oldRefresh|
    oldRefresh.source_files = 'TRefresh/Pod/Classes/THKOldRefresh/*.{h,m}'
  end
  s.subspec 'THKRefreshUIKit' do |ui|
    ui.source_files = 'TRefresh/Pod/Classes/THKRefreshUIKit/*.{h,m}'
  end
  s.subspec 'PrivateUI' do |privateUI|
    privateUI.source_files = 'TRefresh/Pod/Classes/PrivateUI/*.{h,m}'
  end
  s.subspec 'THKMJ' do |mj|
    mj.source_files = 'TRefresh/Pod/Classes/THKMJ/*.{h,m}'
  end

  # TRefresh.bundle
  s.resource_bundles = { 'TRefresh' => ['TRefresh/Pod/Assets/*.{png,json}'] }
  
  s.dependency "TMJRefresh"
  s.dependency 'lottie-ios'
  
end
