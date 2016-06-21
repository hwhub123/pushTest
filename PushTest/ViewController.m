//
//  ViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 20..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLable;

@end

@implementation ViewController
- (void) viewWillAppear:(BOOL)animated {
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    [self.view setBackgroundColor: appDelegate.backColor];
}


- (void)viewDidLoad {
    [super viewDidLoad];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeBackColor:) name:@"YELLO" object:nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) changeBackColor: (NSNotification *) noti {
    NSDictionary *dict = noti.userInfo;
    self.myLable.text = [dict objectForKey: @"sendmsg"];
    [self.view setBackgroundColor: [UIColor yellowColor]];
}
@end
