//
//  ViewController.m
//  评分设置
//
//  Created by Lzy on 16/6/22.
//  Copyright © 2016年 Lzy. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+LzyImageTint.h"
#import "StarView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    StarView *starV=[[StarView alloc]initWithFrame:CGRectMake(20, 20, 5*25, 25)];
    starV.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:starV];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

@end
