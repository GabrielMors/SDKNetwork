Pod::Spec.new do |s|
  s.name             = 'SDKNetwork'
  s.version          = '0.0.1'
  s.summary          = 'SDKNetwork - Uma biblioteca poderosa para realizar operações de rede de forma eficiente.'
  s.swift_version    = '5.0'

  s.description      = <<-DESC
O SDKNetwork é uma biblioteca que oferece recursos poderosos para realizar operações de rede de forma eficiente em aplicativos iOS.
DESC

  s.homepage         = 'https://github.com/GabrielMors/SDKNetwork'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'GabrielMors' => 'gabrielmors210@gmail.com' }
  s.source = { :git => 'https://github.com/GabrielMors/SDKNetwork.git', :tag => 'main' }
  s.ios.deployment_target = '10.0'
  s.source_files = 'SDKNetwork/Classes/**/*'
end
