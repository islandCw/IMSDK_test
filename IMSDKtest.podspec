Pod::Spec.new do |s|

  s.name         = "IMSDKtest"
  s.version      = "2.3.1.11163"
  s.summary      = "Update IMSDKtest."

  s.description  = "IMSDKtest"

  s.homepage     = "https://github.com/islandCw/IMSDK_test.git"


  s.license      = "MIT"
  s.author             = { "youme" => "cwwu@youme.im" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/islandCw/IMSDK_test.git", :tag => "s.version" }
  s.requires_arc=true

  s.subspec 'include' do |ss|
    ss.source_files  = "include/*.{h,m,mm}"
    ss.public_header_files = "include/*.{h}"
  end
  
  s.subspec 'lib' do |ss|
    ss.source_files = "lib/**/*.h"
    ss.vendored_libraries="lib/*.{a}"
    ss.vendored_frameworks = "lib/*.framework"
  end

end
