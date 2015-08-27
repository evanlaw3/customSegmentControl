//
//  customerSegmentControll.h
//  customerSegmentControll
//
//  Created by 罗西 on 8/27/15.
//  Copyright (c) 2015 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customerSegmentControll : UISegmentedControl

@property (nonatomic, strong) CALayer *indecatorView;
- (void)setSelectedSegmentIndex:(NSInteger)index;

@end
