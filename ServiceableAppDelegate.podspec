#
# Be sure to run `pod lib lint ServiceableAppDelegate.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ServiceableAppDelegate'
  s.version          = '0.1.2'
  s.summary          = 'Serviceable application delegate'

  s.description      = <<-DESC
Serviceable application delegate separates application lifecycle events from AppDelegate instance in convenient way
                       DESC

  s.homepage         = 'https://github.com/max-kryuchkov/ServiceableAppDelegate'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'max-kryuchkov' => 'max.kryuchkov111@gmail.com' }
  s.source           = { :git => 'https://github.com/max-kryuchkov/ServiceableAppDelegate.git', :tag => s.version.to_s }
  s.swift_version    = '5.1'
  s.ios.deployment_target = '8.0'

  s.source_files = 'ServiceableAppDelegate/Classes/**/*'
end
