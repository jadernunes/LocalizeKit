Pod::Spec.new do |s|
s.name              = "LocalizeKit"
s.version           = "1.0.1"
s.summary           = "Localize kit to work with multiple languages"
s.homepage          = "https://github.com/jadernunes/LocalizeKit.git"
s.author            = "Jáder Nunes - https://jadernunes.com"
s.platform          = :ios, "14.0"

s.swift_version     = '5.0'
s.source_files  = "Sources/**/*.{h,m,swift}"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.source = { :git => "git@github.com:jadernunes/LocalizeKit.git", :branch => "master", :tag => "#{s.version}" }
s.frameworks = 'Foundation', 'UIKit', 'SwiftUI'

s.pod_target_xcconfig = {
  'FRAMEWORK_SEARCH_PATHS' => '$(inherited)',
  'BITCODE_GENERATION_MODE' => 'bitcode'
}

end