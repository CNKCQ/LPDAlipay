#
# Be sure to run `pod lib lint LPDAlipay.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LPDAlipay'
  s.version          = '0.1.0'
  s.summary          = 'A short description of LPDAlipay.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

    s.homepage         = 'https://github.com/cnkcq/LPDAlipay'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'cnkcq' => 'chengquan.wang@ele.me' }
    s.source           = { :git => 'https://github.com/cnkcq/LPDAlipay.git', :tag => s.version.to_s }

    s.ios.deployment_target = '8.0'
    
    s.default_subspecs = 'Core'
    
    s.subspec 'Core' do |ss|
        ss.public_header_files = 'LPDAlipay/Classes/LPDAlipay.h'
        ss.source_files = 'LPDAlipay/Classes/**/*.{h,m,mm}'
        ss.resources = 'LPDAlipay/Assets/*'
        ss.dependency 'LPDAlipay/openssl'
        ss.dependency 'LPDAlipay/Alipay'
    end
    
    s.subspec 'openssl' do |ss|
        ss.header_dir          = 'openssl'
        ss.public_header_files = "LPDAlipay/libs/openssl/*"
        ss.vendored_libraries  = "LPDAlipay/libs/libcrypto.a", "LPDAlipay/libs/libssl.a"
        ss.preserve_paths      = "LPDAlipay/libs/libcrypto.a", "LPDAlipay/libs/libssl.a"
        ss.libraries           = 'crypto', 'ssl'
        ss.requires_arc        = false
        ss.libraries = ['stdc++','c++.1','c++abi','z.1.1.3','icucore']
    end
    
    s.subspec 'Alipay' do |ss|
        ss.vendored_frameworks = 'LPDAlipay/framework/AlipaySDK.framework'
        ss.resource_bundle = {
            'AlipaySDK' => ['LPDAlipay/framework/*.bundle']
        }
        ss.frameworks            = 'SystemConfiguration', 'CoreTelephony', 'QuartzCore', 'CoreText', 'CoreGraphics', 'UIKit', 'Foundation','CFNetwork', 'CoreMotion'
    end
end
