# WQSafariDemo
APP获取safari cookie数据demo

为了实现推广渠道链接统计而找到的方法，获取渠道链接中隐藏的cookie信息来判断对应渠道
基于SFSafariViewController 获取Safari中的cookie信息

缺陷：
1.iOS 9.0之前的版本无法使用
2.需要授权弹窗

优化推荐：
渠道链接在点击跳转appstore下载时，给粘贴板赋值渠道信息
打开app时获取粘贴板信息，从而获取到渠道信息，上传服务器统计，上传成功后修改粘贴板信息
