Pod::Spec.new do |spec|
    spec.name          = 'SampleFramework'
    spec.version       = '3.1.0'
    spec.license       = { :type => 'BSD' }
    #spec.homepage      = 'https://github.com/tonymillion/Reachability'
    spec.authors       = { 'Mahmoud Amer' => 'mahmoud.amer@addapptr.com' }
    spec.summary       = 'Mew sample framework'
    #spec.source        = { :git => 'https://github.com/tonymillion/Reachability.git', :tag => 'v3.1.0' }
    spec.module_name   = 'SampleFramework'
    spec.swift_version = '5.0'
  
    spec.ios.deployment_target  = '9.0'
    
    spec.framework      = 'SystemConfiguration'
    spec.ios.framework  = 'UIKit'
  
    spec.default_subspecs = 'Default'
    spec.subspec 'Default' do |s|
        s.dependency 'AATKit/GoogleMobileAds'
        s.dependency 'AATKit/Inmobi'
    end # subspec Default

    spec.subspec 'GoogleMobileAds' do |s|
        s.dependency 'Google-Mobile-Ads-SDK', '7.68.0'
    end # subspec GoogleMobileAds

    spec.subspec 'Inmobi' do |s|
        s.dependency 'AATKit/Core'
        s.dependency 'InMobiSDK/Core', '9.1.0'
    end # subspec Inmobi
  end