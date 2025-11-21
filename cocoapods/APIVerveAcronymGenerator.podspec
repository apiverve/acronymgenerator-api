Pod::Spec.new do |s|
  s.name             = 'APIVerveAcronymGenerator'
  s.version          = '1.1.9'
  s.summary          = 'Acronym Generator is an AI-powered tool for creating creative acronyms from text. It returns 3 unique acronym suggestions for any given phrase.'
  s.description      = <<-DESC
Acronym Generator is an AI-powered tool for creating creative acronyms from text. It returns 3 unique acronym suggestions for any given phrase.

This iOS/macOS SDK provides a convenient way to access the Acronym Generator from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  s.source           = { :git => 'https://github.com/apiverve/acronymgenerator-api.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.14'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '5.0'

  s.swift_version = '5.0'

  s.source_files = 'Sources/APIVerveAcronymGenerator/**/*'

  s.frameworks = 'Foundation'
end
