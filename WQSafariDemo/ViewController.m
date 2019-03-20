//
//  ViewController.m
//  WQSafariDemo
//
//  Created by Brain on 2019/2/15.
//  Copyright © 2019 Brain. All rights reserved.
//

#import "ViewController.h"
#import <SafariServices/SafariServices.h>

@interface ViewController ()<SFSafariViewControllerDelegate>
@property (nonatomic,strong) SFSafariViewController * safariView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(getChannel) withObject:nil afterDelay:2.0f];//延时调用获取渠道信息
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
#pragma mark - 渠道获取
-(void)getChannel {
    NSString *url=@"http://static.thextrend.com/activity/blank/index.html";//在cookie中包含渠道信息的链接
    self.safariView = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:url]];
    self.safariView.delegate=self;
    [self presentViewController:self.safariView animated:NO completion:nil];
    
    //鉴于SFSafariViewController的不足（会有授权弹窗，低版本可能获取不到safari 的cookie信息），推荐使用粘贴板来实现获取渠道信息。思路是整个iOS系统中共用了粘贴板，所以在渠道链接中给粘贴板赋值，在此获取系统粘贴板中的渠道信息。这里不详谈。
}
#pragma mark - SFSafariViewControllerDelegate
-(void)safariViewControllerDidFinish:(SFSafariViewController*)controller {
    NSLog(@"safariViewControllerDidFinish===%s",__func__);
}
-(void)safariViewController:(SFSafariViewController*)controller didCompleteInitialLoad:(BOOL)didLoadSuccessfully {
    //    if(didLoadSuccessfully){
    //        NSLog(@"didCompleteInitialLoad===%s",__func__);
    //        [self dismissViewControllerAnimated:YES completion:nil];
    //    }
}

@end
