//
//  MHWBaseViewController.m
//  MHWPodDemo
//
//  Created by 苗华威 on 2019/2/20.
//  Copyright © 2019 James. All rights reserved.
//

#import "MHWBaseViewController.h"

@interface MHWBaseViewController ()

@end

@implementation MHWBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addViews];
    [self addConstraints];
}

-(void)addViews {
    [self.view addSubview:self.background];
}

-(void)addConstraints {
    [self.background mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.left.right.equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -- Lazy --
-(MHWBaseView*)background
{
    if(!_background) {
        _background = [[MHWBaseView alloc] initWithFrame:CGRectZero];
        [_background setBackgroundColor:[UIColor orangeColor]];
    }

    return _background;
}

@end
