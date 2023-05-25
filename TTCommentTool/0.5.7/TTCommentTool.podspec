Pod::Spec.new do |s|
  s.name             = "TTCommentTool"
  s.version          = "0.5.7"
  s.summary          = "土巴兔评论点赞收藏SDK"
  s.description      = "土巴兔评论点赞收藏SDK"
  s.homepage         = "http://repo.we.com/ios/tbtrepo"
  s.license          = 'MIT'
  s.author           = { "jerry.jiang" => "jerry.jiang@corp.to8to.com" }
  s.source           = { :git => "http://repo.we.com/ios/tbtrepo.git", :tag => "0.7.85" }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.prefix_header_contents = '#import "TBasicLib.h"'

    s.resources = ['TTCommentTool/Pod/Resources/**/*']

    s.subspec 'Controller' do |c|
    c.source_files = 'TTCommentTool/Pod/Controller/*.{h,m}'
    end

    s.subspec 'Model' do |m|
    m.source_files = 'TTCommentTool/Pod/Model/*.{h,m}'
    end

    s.subspec 'View' do |v|
    v.source_files = 'TTCommentTool/Pod/View/*.{h,m}'
    end

    s.subspec 'Tool' do |t|
    t.source_files = 'TTCommentTool/Pod/Tool/*.{h,m}'
    end
    s.dependency 'TBasicLib'


end
