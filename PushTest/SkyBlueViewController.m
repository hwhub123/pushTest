//
//  SkyBlueViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 21..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "SkyBlueViewController.h"
#import "BlueViewController.h"

@interface SkyBlueViewController ()

@end

@implementation SkyBlueViewController
- (void) viewDidAppear:(BOOL)animated {
    self.skyBlueLabel.text = _lableStr;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.skyBlueLabel.text = @"SKY BLUE";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

    BlueViewController *nextVC = [segue destinationViewController];
    nextVC.blueviewlabel.text = @"BLUE";
    nextVC.blueLableStr = @"BLUE";
}

@end
