require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                   = 'react-native-call-state'
  s.version                = package['version']
  s.summary                = package['description']
  s.description            = package['description']
  s.homepage               = package['homepage']
  s.license                = package['license']
  s.author                 = package['author']
  s.source                 = { :git => 'https://github.com/mybadge/react-native-call-state.git', :tag => s.version }

  s.platform               = :ios, '10.0'
  s.ios.deployment_target  = '10.0'

  s.preserve_paths         = 'LICENSE', 'package.json'
  s.source_files           = '**/*.{h,m}'
  s.exclude_files          = 'RCTCallState/**/*'
  s.dependency               'React'
end
