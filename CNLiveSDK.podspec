#
# Be sure to run `pod lib lint CNLiveSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNLiveSDK'
  s.version          = '0.3.5.2'
  s.summary          = 'CNLiveSDK集合库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/oldSixMrZhang/CNLiveSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'oldSixMrZhang' => 'zhangxu@cnlive.com' }
  s.source           = { :git => 'https://github.com/oldSixMrZhang/CNLiveSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }


  s.subspec 'CNLiveStat' do |sp|
    sp.vendored_frameworks = 'CNLiveSDK/Classes/CNLiveStat.framework'
  end

  s.subspec 'CNLiveUserSystemSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDK/Classes/CNLiveUserSystemSDK.framework'
  end

  s.subspec 'CNLiveEncryptSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDK/Classes/CNLiveEncryptSDK.framework'
  end

  s.subspec 'CNLivePaySDK' do |sp|
      sp.vendored_frameworks = 'CNLiveSDK/Classes/CNLivePaySDK.framework'
  end

  s.subspec 'CNLivePlayerSDK' do |sp|
    sp.vendored_frameworks = 'CNLiveSDK/Classes/CNLivePlayerSDK.framework'
    sp.dependency 'libksygpulive'
    sp.dependency 'Ks3SDK'

  end
end
