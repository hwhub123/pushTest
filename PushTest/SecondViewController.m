//
//  SecondViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"
@interface SecondViewController ()

@end

@implementation SecondViewController
- (void) viewWillAppear:(BOOL)animated {
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [self.view setBackgroundColor: delegate.backColor];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
}

- (IBAction)buttonClicked:(id)sender {
    [self performSegueWithIdentifier: @"third_view" sender:self];
}
@end
