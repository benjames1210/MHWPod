//
//  MHWBaseView.m
//  MHWPodDemo
//
//  Created by 苗华威 on 2019/2/20.
//  Copyright © 2019 James. All rights reserved.
//

#import "MHWBaseView.h"
#import <SDWebImageManager.h>

@implementation MHWBaseView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self addViews];
        [self addConstraints];
    }
    return self;
}

-(void)addViews {

}

-(void)addConstraints {
    
}


-(void)addImageIntoBackgroundWithPath:(NSString *)imagePath {

}

-(void)addImageIntoBackgroundWithURL:(NSString *)imageUrl {

}

@end
