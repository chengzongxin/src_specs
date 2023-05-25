
Pod::Spec.new do |s|
  s.name             = "TBasicLib"
  s.version          = "0.8.66"
  s.summary          = "土巴兔iOS基础库"
  s.description      = "土巴兔iOS基础库,所有项目和库的基础"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "kevin.huang" => "kevin.huang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :commit => "efdd56a" }
  s.platform     = :ios, '8.2'
  s.requires_arc = true

  s.source_files = 'TBasicLib/Pod/Classes/**/*'

  s.dependency 'THKCustomHUD'
  s.dependency 'TMToast'
  s.dependency 'Reachability'

end
