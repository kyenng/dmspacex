source "https://github.com/CocoaPods/Specs.git"

platform :ios, '9.0'
use_frameworks!

def common_pods
  pod 'RxSwift'
  pod 'RealmSwift'
  pod 'BouncyLayout'
  pod 'AnimatedCollectionViewLayout'
end

target 'DMSpaceX' do
  common_pods
  pod 'Reusable'
  pod 'Fabric'
  pod 'Crashlytics'
  pod 'RxCocoa'
end

target :UnitTests do
  common_pods
  pod 'OHHTTPStubs/Swift'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end

