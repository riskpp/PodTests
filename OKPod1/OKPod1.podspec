#
# Be sure to run `pod lib lint OKPod1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OKPod1'
  s.version          = '0.1.0'
  s.summary          = 'A short description of OKPod1.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/riskpp/OKPod1'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'riskpp' => 'Olga.Koroleva@infobip.com' }
  s.source           = { :git => 'https://github.com/riskpp/OKPod1.git', :tag => s.version.to_s }
  s.platform         = :ios
  s.ios.deployment_target = '9.0'
  s.swift_version = '5'
#  s.requires_arc  = true
#  s.pod_target_xcconfig =  {
#      'SWIFT_VERSION' => '5',
#      'OTHER_SWIFT_FLAGS[config=Debug]' => '-DDEBUG'
#  }
  s.default_subspec = 'Core'
  
  # s.resource_bundles = {
  #   'OKPod1' => ['OKPod1/Assets/*.png']
  # }

  s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'CocoaLumberjack/Swift'
  
  s.subspec 'Core' do |core|
      s.source_files = 'OKPod1/Classes/Core/**/*.{h,m,swift}'
  end
  
  s.subspec 'NotCore' do |ncore|
      ncore.dependency 'OKPod1/Core'
      ncore.source_files = 'OKPod1/Classes/NotCore/**/*.{h,m,swift}'
  end
end
