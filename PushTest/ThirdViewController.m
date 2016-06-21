//
//  ThirdViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "ThirdViewController.h"
#import "AppDelegate.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController
- (void)viewWillAppear:(BOOL)animated {
//    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
//    [self.view setBackgroundColor: appDelegate.backColor];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBackColor:) name:@"YELLOW" object:nil];
    // Do any additional setup after loading the view.
}

- (void) changeBackColor: (NSNotification *) noti {
    [self.view setBackgroundColor: [UIColor yellowColor]];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
