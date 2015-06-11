//
//  SecondViewController.m
//  alphacamp_Test_150611
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btnPic1.hidden = YES;
    self.btnPic2.hidden = YES;
    self.btnPic3.hidden = YES;
    self.btnPic4.hidden = YES;
    
    self.labelShowBiggestNum.text = [NSString stringWithFormat:@"%d", self.biggestNumIn2ndVC];
    
    if (self.biggestNumIn2ndVC % 4 == 0) {
       self.btnPic1.hidden = NO;
    }
    else if (self.biggestNumIn2ndVC % 4 == 1) {
       self.btnPic2.hidden = NO;
    }
    else if (self.biggestNumIn2ndVC % 4 == 1) {
       self.btnPic3.hidden = NO;
    }
    else {
       self.btnPic4.hidden = NO;
    }
    
    NSLog(@"%d", self.biggestNumIn2ndVC % 4);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickPic1:(id)sender
{
    //顯示第二張
    self.btnPic1.hidden = YES;
    self.btnPic2.hidden = NO;
    
}
- (IBAction)clickPic2:(id)sender
{
    //顯示第三張
    self.btnPic2.hidden = YES;
    self.btnPic3.hidden = NO;
}
- (IBAction)clickPic3:(id)sender
{
    //顯示第四張
    self.btnPic3.hidden = YES;
    self.btnPic4.hidden = NO;
}
- (IBAction)clickPic4:(id)sender
{
    //顯示第一張
    self.btnPic1.hidden = NO;
    self.btnPic4.hidden = YES;
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
