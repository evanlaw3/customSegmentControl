//
//  customerSegmentControll.m
//  customerSegmentControll
//
//  Created by 罗西 on 8/27/15.
//  Copyright (c) 2015 com.demo. All rights reserved.
//

#import "customerSegmentControll.h"

@implementation customerSegmentControll

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)init
{
    if ((self = [super init]))
    {
        self.clipsToBounds = YES;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    
    if ((self = [super initWithFrame:frame]))
    {
        self.clipsToBounds = YES;
        
        
    }
    return self;
}

-(instancetype)initWithItems:(NSArray *)items{
    if ((self = [super initWithItems:items]))
    {
        self.clipsToBounds = YES;
        
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
    [self setTintColor:[UIColor redColor]];
    /*
    NSShadow *shadow = [NSShadow new];
    [shadow setShadowColor: [UIColor colorWithWhite:0.0f alpha:0.750f]];
    [shadow setShadowOffset: CGSizeMake(0.0f, 1.0f)];
     */
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor greenColor],NSForegroundColorAttributeName,  [UIFont fontWithName:@"Helvetica" size:16.f],NSFontAttributeName,nil];
    NSDictionary *dic2 = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],NSForegroundColorAttributeName,  [UIFont fontWithName:@"Helvetica" size:16.f],NSFontAttributeName,nil];
    [self setTitleTextAttributes:dic forState:UIControlStateSelected];
    [self setTitleTextAttributes:dic2 forState:UIControlStateNormal];
    [self setTintColor:[UIColor clearColor]];
    
    NSLog(@"w:%f, h:%f",rect.size.width,rect.size.height);
}

- (void)setSelectedSegmentIndex:(NSInteger)index{
    
    //[_indecatorView removeFromSuperview];
    
    float segmentItemWidth = self.frame.size.width/self.numberOfSegments;
    if (_indecatorView == nil) {
        _indecatorView = [CALayer new];
    }
    _indecatorView.frame =  CGRectMake(segmentItemWidth*index+10, self.frame.size.height-5, self.frame.size.width/3-20, 5);
    [_indecatorView setBackgroundColor:[UIColor greenColor].CGColor];
    [self.layer addSublayer:_indecatorView];
}



@end
