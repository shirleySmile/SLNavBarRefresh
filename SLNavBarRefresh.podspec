#
# Be sure to run `pod lib lint SLNavBarRefresh.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SLNavBarRefresh'
  s.version          = '0.1.1'
  s.summary          = 'NavBar+Refresh.'


  s.description      = <<-DESC
0.1.1 inital data with navigationBar + refreshData
                       DESC

  s.homepage         = 'https://github.com/shirleySmile/SLNavBarRefresh'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shirleySmile' => '276482207@qq.com' }
  s.source           = { :git => 'https://github.com/shirleySmile/SLNavBarRefresh.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SLNavBarRefresh/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SLNavBarRefresh' => ['SLNavBarRefresh/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
