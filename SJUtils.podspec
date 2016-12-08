#
# Be sure to run `pod lib lint SJUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SJUtils'
  s.version          = '0.1.2'
  s.summary          = 'A personal utils'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A personal utils, just for fun'

  s.homepage         = 'http://zhangbuhuai.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sadjason' => 'sadjason@qq.com' }
  s.source           = { :git => 'https://github.com/sadjason/SJUtils.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'SJUtils/Classes/**/*.{h,m,swift}'
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }

end
