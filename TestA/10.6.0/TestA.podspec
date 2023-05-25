#
# Be sure to run `pod lib lint TestA.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestA'
  s.version          = '10.6.0'
  s.summary          = 'A short description of TestA.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/chengzongxin/TestA'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chengzongxin' => 'joe.cheng@corp.to8to.com' }
  # s.source           = { :git => 'http://repo.we.com/iosfeaturelibraries/THKBusinessComponent.git', :commit => '528104c'}
  s.source           = { :git => 'git@repo.we.com:iosfeaturelibraries/frameworkrepo.git', :commit => '145be7a'}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'


  
  # s.resource_bundles = {
  #   'TestA' => ['TestA/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'


  # if ENV['IS_SOURCE'] || ENV["#{s.name}_SOURCE"]


    puts '-------------------------------------------------------------------'
    puts "#{s.name}" + " " +"#{s.version}" + ' is source now'
    puts '-------------------------------------------------------------------'
    s.ios.deployment_target = '10.0'
    s.public_header_files = 'TestA/TestA/Classes/*.h'
    s.source_files = 'TestA/TestA/Classes/**/*'

  # else
        
  #   puts '-------------------------------------------------------------------'
  #   puts "#{s.name}" + " " +"#{s.version}" + ': is binary now'
  #   puts '-------------------------------------------------------------------'

  #   s.source_files = "#{s.name}-#{s.version}/ios/#{s.name}.framework/Headers/*.h"
  #   s.public_header_files = "#{s.name}-#{s.version}/ios/#{s.name}.framework/Headers/*.h"
  #   s.ios.vendored_framework = "#{s.name}-#{s.version}/ios/#{s.name}.framework"

  # end

end
