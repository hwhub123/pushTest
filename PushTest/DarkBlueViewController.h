//
//  DarkBlueViewController.h
//  PushTest
//
//  Created by MF839-014 on 2016. 6. 21..
//  Copyright © 2016년 MF839-014. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DarkBlueViewController : UIViewController
@property (weak, nonatomic) NSString *darkblueLableStr;
@property (weak, nonatomic) IBOutlet UILabel *darkblueviewlabel;
- (IBAction)buttonClicked:(id)sender;
@end
