Pod::Spec.new do |spec|

  spec.name         = "AmelkinHomework"
  spec.version      = "0.0.9"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
Learning project for GPB-iOS. Represents a square view with name
                   DESC

  spec.homepage     = "https://github.com/Vlodzimej/GPB-iOS-Cocoapods-Homework"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "vlodzimej" => "amel-07@mail.ru" }

  spec.ios.deployment_target = "13.0"
  spec.swift_version = "4.2"

  spec.source        = { :git => "https://https://github.com/Vlodzimej/GPB-iOS-Cocoapods-Homework.git", :tag => "#{spec.version}" }
  spec.source_files  = "AmelkinHomework/**/*.{h,m,swift}"

  spec.dependency 'SnapKit'
  spec.dependency 'OtusHomework'

  spec.public_header_files = "AmelkinHomework/**/*.{h}"
end
