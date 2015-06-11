//
//  SecondViewController.h
//  alphacamp_Test_150611
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"

@interface SecondViewController : ViewController

@property IBOutlet UILabel *labelShowBiggestNum;
@property int biggestNumIn2ndVC;

@property IBOutlet UIButton *btnPic1;
@property IBOutlet UIButton *btnPic2;
@property IBOutlet UIButton *btnPic3;
@property IBOutlet UIButton *btnPic4;

@property IBOutlet UIImageView *imgPic;

@property UIImage *img1;
@property UIImage *img2;
@property UIImage *img3;
@property UIImage *img4;

@property int picNum;
@end
