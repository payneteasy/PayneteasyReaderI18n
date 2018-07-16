Pod::Spec.new do |s|
  s.name                  = 'PayneteasyReaderI18n'
  s.version               = '1.0.1'
  s.summary               = 'PayneteasyReaderI18n is a library for payneteasy events localization.'
  s.license               = { :type => 'APACHE', :file => 'LICENSE' }
  s.homepage              = 'https://www.payneteasy.com'
  s.authors               = { 'Sergey Anisiforov' => 'sa@payneteasy.com' }
  s.source                = { :git => 'https://github.com/payneteasy/PayneteasyReaderI18n.git', :tag => s.version.to_s }
  s.frameworks            = 'Foundation'
  s.requires_arc          = true
  s.platform              = :ios
  s.ios.deployment_target = '8.0'
  s.public_header_files   = 'PayneteasyReaderI18n/Classes/*.h'
  s.source_files          = 'PayneteasyReaderI18n/Classes/*.{h,m}'
  s.resource_bundle 	  = { "PayneteasyReaderEvents" => ["PayneteasyReaderI18n/Resources/*.lproj/*.strings"] }
  s.dependency  'payneteasy/PaynetEasyReader'
end
