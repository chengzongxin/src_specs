Pod::Spec.new do |s|
  s.name             = "TRefresh"
  s.version          = "0.2.7"
  s.summary          = "旧版下拉刷新组件最后一个更新小版本"
  s.description      = "由MJRefresh修改而来"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "e80cc90" }
  s.platform     = :ios, '7.0'
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

  #old s.resources = ['TRefresh/Pod/Assets/*.png']
  # TRefreshAssets 后续不要随便修改名字，pod库内相关图片数据读取的Bundle名是固定写死为TRefreshAssets.bundle
  s.resource_bundles = {
    'TRefreshAssets' => ['TRefresh/Pod/Assets/*.png']
  }

  s.dependency 'TBasicLib'
end
