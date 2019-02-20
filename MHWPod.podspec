

Pod::Spec.new do |s|

  #pod的名称
  s.name         = "MHWPod"
  #pod的版本
  s.version      = "0.0.1"
  #pod简介(最多140字符)
  s.summary      = "MHWPod."
  #pod详细描述
  s.description  = <<-DESC
                    MHWPod
                   DESC
  #项目主页地址
  s.homepage     = "https://github.com/benjames1210/MHWPod.git"

  #spec.screenshots = [ 'http://dl.dropbox.com/u/378729/MBProgressHUD/1.png', 'http://dl.dropbox.com/u/378729/MBProgressHUD/2.png' ]
  #
  #spec.documentation_url = 'http://www.example.com/docs.html'
  #许可证
  s.license      = { :type => "MIT", :file => "LICENSE" }
  #作者
  s.author             = { "ben" => "ben@sabia.me" }
  # Or just: s.author    = "xuqiang"
  # s.authors            = { "xuqiang" => "xuqiang@100tal.com" }
  #社交网址 微薄或者博客
  # s.social_media_url   = "xuqiang@100tal.com"

  #库支持的最低系统版本
  s.platform     = :ios, "8.0"

  #需要系统版本支持平台的最小部署目标。与平台属性不同的是，部署目标属性允许指定多个平台支持该pod，为每个平台指定不同的部署目标。
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  #库索引地址
  s.source       = { :git => "https://github.com/benjames1210/MHWPod.git", :tag => s.version.to_s }

  #需要包含的源文件
  s.source_files  = "MHWPod/**/*.{h,m}"
  #需要移除的文件
  # s.exclude_files = "Classes/Exclude"
  #公开的头文件。如果没有指定公共头文件，那么source文件中的所有头文件都被认为是公开的。
  # s.public_header_files = "Classes/**/*.h"
  #私有头文件
  #s.private_header_files = 'Headers/Private/*.h'

  # s.resource  = "icon.png"
  #资源文件
  # s.resources = "Resources/*.png"
  s.resources = "MHWPod/**/Resources/CloudLearning_English_Base.xcassets"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  #需要系统framwork
  # s.ios.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  #需要的系统libraries
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  #是否支持Arc
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

  #依赖库 可以写多个 依赖关系可以指定版本需求
  # s.dependency 'Masonry' , '1.1.0'
  # s.dependency 'MJRefresh' , '3.1.15.1'
  # s.dependency 'YYModel', '1.0.4'
  # s.dependency 'lottie-ios' , '2.5.0'

end
