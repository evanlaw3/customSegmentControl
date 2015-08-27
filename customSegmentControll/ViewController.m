//
//  ViewController.m
//  customerSegmentControll
//
//  Created by 罗西 on 8/27/15.
//  Copyright (c) 2015 com.demo. All rights reserved.
//

#import "ViewController.h"
#import "customerSegmentControll.h"

@interface ViewController ()

@property(nonatomic,strong)customerSegmentControll *segControll;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _segControll = [[customerSegmentControll alloc]initWithItems:@[@"is 1",@"is 2",@"is 3"]];
    _segControll.frame = CGRectMake(-3, 22, self.view.frame.size.width+6, 80);
    [self.view addSubview:_segControll];
    //segControll.segmentedControlStyle = UISegmentedControlStyleBar;
    [_segControll.layer setBorderColor:[UIColor grayColor].CGColor];
    
    [_segControll addTarget:self action:@selector(controlPressed:) forControlEvents:UIControlEventValueChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)controlPressed:(UISegmentedControl*)segment{
    //读取控件
    NSLog(@"%d",segment.selectedSegmentIndex);
    [_segControll setSelectedSegmentIndex:segment.selectedSegmentIndex];
}

@end
