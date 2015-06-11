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
    
    self.img1 = [UIImage imageNamed:@"pic01"];
    self.img2 = [UIImage imageNamed:@"pic02"];
    self.img3 = [UIImage imageNamed:@"pic03"];
    self.img4 = [UIImage imageNamed:@"pic04"];
    
//    self.btnPic1.hidden = YES;
//    self.btnPic2.hidden = YES;
//    self.btnPic3.hidden = YES;
//    self.btnPic4.hidden = YES;
    
    self.labelShowBiggestNum.text = [NSString stringWithFormat:@"%d", self.biggestNumIn2ndVC];
    
    if (self.biggestNumIn2ndVC % 4 == 0) {
        self.imgPic.image = self.img1;
        self.picNum = 1;
    }
    else if (self.biggestNumIn2ndVC % 4 == 1) {
        self.imgPic.image = self.img2;
        self.picNum = 2;
    }
    else if (self.biggestNumIn2ndVC % 4 == 1) {
        self.imgPic.image = self.img3;
        self.picNum = 3;
    }
    else {
        self.imgPic.image = self.img4;
        self.picNum = 4;
    }
    
    
    
    
    
    //tap
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changePic)];
    [tapGR setDelegate:self];
    [self.imgPic addGestureRecognizer:tapGR];
    
}

- (void)changePic
{
    NSLog(@"hello");
    if (self.picNum == 1)
    {
        self.imgPic.image = self.img1;
        self.picNum++;
    }
    else if (self.picNum == 2)
    {
        self.imgPic.image = self.img2;
        self.picNum++;
    }
    else if (self.picNum == 3)
    {
        self.imgPic.image = self.img3;
        self.picNum++;
    }
    else if (self.picNum == 4)
    {
        self.imgPic.image = self.img4;
        self.picNum = 1;
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (IBAction)clickPic1:(id)sender
//{
//    //顯示第二張
//    self.btnPic1.hidden = YES;
//    self.btnPic2.hidden = NO;
//    
//}
//- (IBAction)clickPic2:(id)sender
//{
//    //顯示第三張
//    self.btnPic2.hidden = YES;
//    self.btnPic3.hidden = NO;
//}
//- (IBAction)clickPic3:(id)sender
//{
//    //顯示第四張
//    self.btnPic3.hidden = YES;
//    self.btnPic4.hidden = NO;
//}
//- (IBAction)clickPic4:(id)sender
//{
//    //顯示第一張
//    self.btnPic1.hidden = NO;
//    self.btnPic4.hidden = YES;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
