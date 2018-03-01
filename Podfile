source "https://github.com/CocoaPods/Specs.git"

platform :ios, '9.0'
use_frameworks!

def common_pods
#  pod 'Alamofire'
  pod 'RxSwift'
#  pod 'RealmSwift'
#  pod 'ObjectMapper'
#  pod 'KeychainSwift'
end

target 'DMSpaceX' do
  common_pods
  pod 'Reusable'
  pod 'SwiftyUserDefaults'
  pod 'Fabric'
  pod 'Crashlytics'
end

target :UnitTests do
  common_pods
  pod 'OHHTTPStubs'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end

