Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――#

  s.name         = "PlumKit"
  s.version      = "0.0.1"
  s.summary      = "PlumKit set of basic."

  s.homepage     = "https://github.com/7Plum/PlumKit"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.license = { :type => 'MIT', :file => 'LICENSE' }
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.author             = { "kingiol" => "kingxiaokang@gmail.com" }
  # Or just: s.author    = "kingiol"
  # s.authors            = { "kingiol" => "kingxiaokang@gmail.com" }
  # s.social_media_url   = "http://twitter.com/kingiol"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/7Plum/PlumKit.git", :tag => s.version.to_s }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.source_files = "PlumKit/**/*.{swift}"
#s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "PlumKit/PlumKit.playground"

  # s.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
#s.preserve_paths = "CommonCrypto"
#s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/CommonCrypto/CommonCrypto' }
#s.user_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/CommonCrypto/CommonCrypto' }


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.frameworks = "SystemConfiguration", "UIKit"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

#s.module_name  = "CommonCrypto"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end