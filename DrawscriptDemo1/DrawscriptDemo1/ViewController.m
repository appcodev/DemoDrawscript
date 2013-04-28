//
//  ViewController.m
//  DrawscriptDemo1
//
//  Created by Chalermchon Samana on 4/29/13.
//  Copyright (c) 2013 Onzondev Innovation Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "MyDrawingView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MyDrawingView *md = [[MyDrawingView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:md];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
