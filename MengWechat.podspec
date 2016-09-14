

Pod::Spec.new do |s|

  s.name         = "MengWechat"
  s.version      = "0.1.0"
  s.license      = "MIT"
  s.summary      = "put wechat sdk in pods."
  s.description  = "Eat grape.Eat grape.Eat grape.Eat grape.Eat grape.Eat grape.Eat grape."
  s.homepage     = "https://github.com/mlcldh/MengWechat"
  s.author             = { "" => "" }
  s.source       = { :git => "https://github.com/mlcldh/MengWechat.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = "5.0"
  s.source_files  = "MengWechat/SDKExport"

end
