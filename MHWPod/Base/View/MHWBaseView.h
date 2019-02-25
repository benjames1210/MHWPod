//
//  MHWBaseView.h
//  MHWPodDemo
//
//  Created by 苗华威 on 2019/2/20.
//  Copyright © 2019 James. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface MHWBaseView : UIView

-(void)addImageIntoBackgroundWithPath:(NSString *)imagePath;
-(void)addImageIntoBackgroundWithURL:(NSString *)imageUrl;

@end
