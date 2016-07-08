//
//  StarView.m
//  评分设置
//
//  Created by Lzy on 16/6/24.
//  Copyright © 2016年 Lzy. All rights reserved.
//

#import "StarView.h"
#import "UIImage+LzyImageTint.h"

@interface StarView ()
@property(nonatomic,strong)UIView *backView;
@property(nonatomic,strong)UIView *fornView;
@end

@implementation StarView
{
    UIImage *imageN;
    NSArray *arr2;
}

-(void)awakeFromNib
{
    [super awakeFromNib];
   
}
-(instancetype)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        self.backView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        self.fornView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        self.fornView.layer.masksToBounds=YES;
        [self creatImgView];
    }
    return self;
    
}
-(void)creatImgView{
    imageN=[UIImage imageNamed:@"backgroundStar"];
    for (int i=0; i<5; i++) {
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(i*25, 0, 25, 25)];
        imgView.image=imageN;
        [self.backView addSubview:imgView];
    }
    for (int i=0; i<5; i++) {
        UIImageView *imgView=[[UIImageView alloc]initWithFrame:CGRectMake(i*25, 0, 25, 25)];
        imgView.image=imageN;
        [self.fornView addSubview:imgView];
    }
    arr2=[self.fornView subviews];
    [self addSubview:self.backView];
    [self addSubview:self.fornView];
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    UITouch *touch=[touches anyObject];
    CGPoint point=[touch locationInView:self];
    [self changeImgBack:point];
}

-(void)changeImgBack:(CGPoint)point
{
    if (point.x>0&&point.x<25*5) {
        for (int i=0; i<5;i++) {
            self.fornView.frame=CGRectMake(0, 0, point.x, self.frame.size.height);
            if(point.x/25>=i){
                UIImageView *imgView=arr2[i];
                UIImage *image=[imgView.image imageWithTintColor:[UIColor orangeColor]];
                [imgView setImage:image];
            }
        }
    }
    [self setNeedsLayout];
    
    
}

@end
