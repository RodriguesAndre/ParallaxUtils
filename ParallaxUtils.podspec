#
# Be sure to run `pod lib lint ParallaxUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ParallaxUtils'
  s.version          = '0.1.0'
  s.summary          = 'This is a category to easily add parralax effect to UIViews and UIImagesView'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This category helps you to easily add UIMotion to any view. If you want to use it in a UIImageView this will replace your UIImageView with an UIImagView with parallax effects.
                       DESC

  s.homepage         = 'https://github.com/RodriguesAndre/ParallaxPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Andre Rodrigues' => 'rodrigues.andre.carlos@gmail.com' }
  s.source           = { :git => 'https://github.com/<GITHUB_USERNAME>/ParallaxUtils.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ParallaxUtils/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ParallaxUtils' => ['ParallaxUtils/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
