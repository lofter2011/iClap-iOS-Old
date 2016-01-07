Pod::Spec.new do |s|

  s.name         = "iClap"
  s.version      = "1.0.0"
  s.summary      = "将你的APP包上传到iClap，在APP内进行产品管理和场景化协作。"
  s.description  = <<-DESC
                   iClap的主要功能：
                   在线批注：APP运行中直接将批注生成任务，处理任务时将场景还原，直观高效。
                   语音任务：将语音精确转换为任务，自动识别任务紧急程度与对接人。
                   即点即用：多个APP项目同一客户端管理，无需逐一下载。
                   简单发布：版本升级只需后台上传一次数据，客户端自动更新。
                   Bug跟踪：自动检测APP漏洞并生成报告，让bug无可遁形。
                   插件管理：多元化模块插件管理，满足企业多方面需求。
                   会议纪要：项目组进行实时、群组沟通，自动生成会议纪要。
                   人才培养：以DevStore为平台提供技能培养，智能匹配发送给各岗位人员，有效提高人员综合素质。
                   DESC

  s.homepage     = "http://www.iclap.cn"
  s.license      = {
      :type => 'Commercial',
      :text => <<-LICENSE
                Copyright (C) 2015 iClap.
                LICENSE
    }
  s.author            = { "iClap" => "lofter2011@qq.com" }
  s.platform          = :ios, '7.0'
  s.source            = { :git => "https://github.com/lofter2011/iClap-iOS.git", :tag => s.version.to_s }
  s.source_files      = 'iClapSDK.framework/Headers/*.{h}'
  s.resources         = 'DevTongXieAppRes.bundle', 'DevTongXieComment.bundle'
  s.preserve_paths    = 'iClapSDK.framework/*', 'DevTongXieAppRes.bundle', 'DevTongXieComment.bundle'
  s.frameworks        = 'UIKit', 'ImageIO', 'AVFoundation', 'SystemConfiguration', 'CoreLocation', 'Security', 'CFNetwork', 'iClapSDK'
  s.xcconfig          =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/iClapSDK/"' }
  s.requires_arc      = true

end
