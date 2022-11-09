#
# Be sure to run `pod lib lint HTSkinBundleResource.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTSkinBundleResource'
  s.version          = '0.1.4'
  s.summary          = 'A short description of HTSkinBundleResource.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/nscribble/HTSkinBundleResource'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'nscribble' => 'x201710216@163.com' }
  s.source           = { :git => 'https://github.com/nscribble/HTSkinBundleResource.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HTSkinBundleResource/Classes/**/*'
  
  s.default_subspec = 'App1'
  
  s.subspec 'App1' do |sp|
    sp.resource_bundles = {
      'Skin' => [
            'HTSkinBundleResource/Assets/Common/*.{xib,png,xcassets,svg,ttf,json,xml,plist,mp3}',
            'HTSkinBundleResource/Assets/Common/Images/**/*.{png,jpg,svg}',
            'HTSkinBundleResource/Assets/App1/*.{xib,png,xcassets,ttf,json,xml,plist}',
            'HTSkinBundleResource/Assets/App1/Images/**/*.{png,jpg,svg}',
            'HTSkinBundleResource/Assets/App1/LottieResource'
        ]
    }
  end

  s.subspec 'App2' do |sp|
    sp.resource_bundles = {
      'Skin' => [
            'HTSkinBundleResource/Assets/Common/*.{xib,png,xcassets,svg,ttf,json,xml,plist,mp3}',
            'HTSkinBundleResource/Assets/Common/Images/**/*.{png,jpg,svg}',
            'HTSkinBundleResource/Assets/App2/*.{xib,png,xcassets,svg,ttf,json,xml,plist,mp3}',
            'HTSkinBundleResource/Assets/App2/Images/**/*.{png,jpg,svg}',
            'HTSkinBundleResource/Assets/App2/LottieResource'
        ]
    }
  end
  
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  # s.resource_bundles = {
  #   'HTSkinBundleResource' => ['HTSkinBundleResource/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
