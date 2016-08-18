//
//  ViewController.m
//  DKTagCloudView
//
//  Created by Meheboob Nadaf on 18/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.view.backgroundColor = [UIColor whiteColor];
    
    DKTagCloudView *tagCloudView = [[DKTagCloudView alloc] initWithFrame:CGRectMake(0, 64,
                                                                                    self.view.bounds.size.width,
                                                                                    self.view.bounds.size.height - 64)];
    [self.view addSubview:tagCloudView];
    self.tagCloudView = tagCloudView;
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Generate"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:self
                                                                             action:@selector(regenerate:)];
    self.tagCloudView.maxFontSize = 20;
    self.tagCloudView.titls = @[
                                @"Meheboob",
                                @"Bhagyashree",
                                @"Raghavendra",
                                @"Harish",
                                @"Bhaskar",
                                @"Nadaf",
                                @"iOS Developers",
                                @"IT Contractors Pvt.Ltd",
                                @"NeoRays",
                                @"Software",
                                @"Hardaware"
                                ];
    [self.tagCloudView setTagClickBlock:^(NSString *title, NSInteger index) {
        NSLog(@"title:%@,index:%zd",title,index);
    }];
}

- (IBAction)regenerate:(id)sender {
    [self.tagCloudView generate];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
