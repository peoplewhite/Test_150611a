//
//  ViewController.m
//  alphacamp_Test_150611
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)printNumberOnLabel {
    self.labelA.text = [NSString stringWithFormat:@"%d", aNum];
    self.labelB.text = [NSString stringWithFormat:@"%d", bNum];
    self.labelC.text = [NSString stringWithFormat:@"%d", self.cNum];
    self.labelD.text = [NSString stringWithFormat:@"%d", self.dNum];
}
-(IBAction)getAllRandomNum:(id)sender
{
    
    aNum = [self getSingleRandomNum];
    bNum = [self getSingleRandomNum];
    self.cNum = [self getSingleRandomNum];
    self.dNum = [self getSingleRandomNum];
    
//    NSLog(@"%d, %d,%d,%d", aNum, bNum, self.cNum, self.dNum);
    [self printNumberOnLabel];
}

- (int) getSingleRandomNum
{
    return arc4random() % 100;
}

- (int)getBiggestNum
{
    int result = aNum;
    
    if (result < bNum) {
        result = bNum;
    }
    
    if (result < self.cNum) {
        result = self.cNum;
    }
    
    if (result < self.dNum) {
        result = self.dNum;
    }
    
    return result;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    SecondViewController *secondVC = segue.destinationViewController;
    secondVC.biggestNumIn2ndVC = [self getBiggestNum];
    
}
@end
