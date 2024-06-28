platform :ios, '12.0'

inhibit_all_warnings!
use_frameworks!

target 'PayneteasyReaderI18n' do
  pod 'PaynetEasyReader', :git => 'git@github.com:payneteasy/PaynetEasyReader.git'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      config.build_settings['CODE_SIGNING_ALLOWED'] = 'NO'
    end
  end
end
