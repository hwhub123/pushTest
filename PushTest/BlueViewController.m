//
//  BlueViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 21..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "BlueViewController.h"
#import "DarkBlueViewController.h"

@interface BlueViewController ()

@end

@implementation BlueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _blueviewlabel.text = _blueLableStr;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewCoßntroller].
    // Pass the selected object to the new view controller.
    DarkBlueViewController *nextVC = [segue destinationViewController];
    nextVC.darkblueLableStr = @"DARK BLUE";
    
}


@end
