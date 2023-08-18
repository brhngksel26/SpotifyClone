platform :ios, '13.0'


target 'SpotifyClone' do
  use_frameworks!

  pod 'SDWebImage'
  pod 'Appirater'
  pod 'Firebase/Analytics'

end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
               end
          end
   end
end
