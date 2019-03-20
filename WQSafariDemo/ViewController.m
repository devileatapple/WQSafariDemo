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
    // Do any additional setup after loading the view, typically from a nib.
    [self performSelector:@selector(getChannel) withObject:nil afterDelay:2.0f];
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}
#pragma mark - 渠道获取
-(void)getChannel{
    
    //    NSString *url=@"http://static.thextrend.com/activity/hwtg_download/index.html";
    NSString *url=@"http://static.thextrend.com/activity/blank/index.html";//空白页
    
    self.safariView = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:url]];
    self.safariView.delegate=self;
    
    [self presentViewController:self.safariView animated:NO completion:nil];
}
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
