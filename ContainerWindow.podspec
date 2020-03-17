Pod::Spec.new do |s|
  s.name             = 'ContainerWindow'
  s.version          = '1.4'
  s.summary          = 'ContainerWindow a second window based on window, which supports to hide into a ball.'
 
  s.homepage         = 'https://github.com/ThiagoCamila/ContainerWindow'
  s.author           = { 'ThiagoCamila' => 'thiagocamila.btc@gmail.com' }
  s.source           = { :git => 'https://github.com/ThiagoCamila/ContainerWindow.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc          = true

  s.vendored_frameworks = '*.framework'
  s.framework           = 'UIKit'

  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.swift_versions      = ['4.2', '5.0', '5.1']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
  
end