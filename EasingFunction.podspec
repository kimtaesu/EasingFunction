Pod::Spec.new do |s|
  s.name                      = "EasingFunction"
  s.version                   = "1.0.1"
  s.summary                   = "EasingFunction"
  s.homepage                  = "https://github.com/kimtaesu/EasingFunction.git"
  s.license                   = { :type => "MIT", :file => "LICENSE" }
  s.author                    = { "Assin" => "kimtaesoo188@gmail.com" }
  s.source                    = { :git => "https://github.com/kimtaesu/EasingFunction.git", :tag => s.version }
  s.ios.deployment_target     = "10.0"
  s.source_files              = "Sources/**/*"
  s.frameworks                = "Foundation"
end
