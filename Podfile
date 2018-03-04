source "https://github.com/CocoaPods/Specs.git"

platform :ios, '9.0'
use_frameworks!

def common_pods
  pod 'RxSwift', '~> 4.1.2'
  pod 'RealmSwift', '~> 3.1.1'
  pod 'BouncyLayout', '~> 2.0.0'
  pod 'AnimatedCollectionViewLayout', '~> 0.3.0'
  pod 'YouTubePlayer', '~> 0.4.0'
end

target 'DMSpaceX' do
  common_pods
  pod 'Reusable', '~> 4.0.0'
  pod 'Fabric', '~> 1.7.5'
  pod 'Crashlytics', '~> 3.10.1'
  pod 'RxCocoa', '~> 4.1.2'
end

target :UnitTests do
  common_pods
  pod 'OHHTTPStubs/Swift', '~> 6.1.0'
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['SWIFT_VERSION'] = '4.0'
    end
  end
end

