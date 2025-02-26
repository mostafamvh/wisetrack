#
# Be sure to run `pod lib lint WiseTrackLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WiseTrackLib'
  s.version          = '0.0.408'
  s.summary          = 'WiseTrack tracking SDK for iOS'
  s.description      = 'WiseTrack provides advanced user tracking features for iOS apps.'
  s.homepage         = 'https://wisetrack.io'
  s.license          = { :type => 'Commercial', :text => 'Copyright (c) 2024 WiseTrack. All rights reserved.' }
  s.author           = { 'Mostafa Movahhed' => 'thisismovahhed@gmail.com' }
  s.source           = { :http => 'https://github.com/mostafamvh/wisetrack/releases/download/0.0.408/WiseTrackLib.xcframework.zip'}
  s.frameworks       = 'Foundation', 'UIKit'
  s.ios.deployment_target = '9.0'
  s.swift_versions   = ["5.0"]
  s.vendored_frameworks = 'WiseTrackLib.xcframework'
end
