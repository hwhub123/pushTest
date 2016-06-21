//
//  DarkBlueViewController.m
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 21..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import "DarkBlueViewController.h"
#import "SkyBlueViewController.h"
#import "ThirdViewController.h"
#import "AppDelegate.h"

@interface DarkBlueViewController ()
- (IBAction)variableSwitch:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@end

@implementation DarkBlueViewController
- (IBAction)variableSwitch:(id)sender
{
    
    UISwitch *mySwitch = sender;
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    
    if(mySwitch.on == YES) {
        appDelegate.backColor = [UIColor purpleColor];
    } else {
        appDelegate.backColor = [UIColor orangeColor];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _darkblueviewlabel.text = _darkblueLableStr;
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

- (IBAction)buttonClicked:(id)sender {
    UINavigationController *myNavCtrler = self.navigationController;
    NSArray *vcArr = [myNavCtrler viewControllers];
    
    NSLog(@"vcArr = %@", vcArr);
//    [myNavCtrler popToRootViewControllerAnimated:YES];


//    [myNavCtrler popToViewController:[vcArr objectAtIndex: 1] animated:YES];

    
//    [myNavCtrler popViewControllerAnimated: YES];

//    SkyBlueViewController *gVc = [vcArr objectAtIndex:0];
//    
//    gVc.lableStr = @"SKYBLUE!!!";

    UINavigationController *nav = [[self.tabBarController viewControllers] objectAtIndex: 0];

//    ThirdViewController *third = [[nav viewControllers] objectAtIndex: 2];
//    
//    [third.view setBackgroundColor: [UIColor yellowColor]];

    NSArray *vcs = [nav viewControllers];
    for(int i = 0; i < [vcs count]; i++) {
        UIViewController *vc = [vcs objectAtIndex:i];
        [vc.view setBackgroundColor:[UIColor redColor]];
    }
}
- (IBAction)notify:(id)sender {
    NSLog(@"TextField Text = %@", self.myTextField.text);
    NSString *sendStr = self.myTextField.text;
    NSDictionary *msgDict = [NSDictionary dictionaryWithObjectsAndKeys:sendStr, @"sendmsg", nil];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"YELLO"
                                                        object:self
                                                      userInfo:msgDict];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_myTextField resignFirstResponder];
    return YES;
}

@end
