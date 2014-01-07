//
//  UIButton+Block.h
//  UIView+Category
//
//  Created by Tracy on 14-1-7.
//  Copyright (c) 2014年 Mark. All rights reserved.
//

#define kUIButtonBlockTouchInside @"TouchInside"

#import <UIKit/UIKit.h>

@interface UIButton (Block)

@property (nonatomic, strong) NSMutableDictionary *actions;

- (void) setAction:(NSString *)action withBlock:(void(^)())block;
@end
