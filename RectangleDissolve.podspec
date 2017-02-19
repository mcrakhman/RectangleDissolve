#
# Be sure to run `pod lib lint RectangleDissolve.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RectangleDissolve'
  s.version          = '0.1.0'
  s.summary          = 'The transition animator which pixelates the view from which we are transitioning'
  s.homepage         = 'https://github.com/mcrakhman/RectangleDissolve'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Михаил Рахманов' => 'rakhmano.m@gmail.com' }
  s.source           = { :git => 'https://github.com/mcrakhman/RectangleDissolve.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'

  s.source_files = 'RectangleDissolve/Classes/**/*'
end
