//
//  UIButton+Block.m
//  UIView+Category
//
//  Created by Tracy on 14-1-7.
//  Copyright (c) 2014年 Mark. All rights reserved.
//

#import "UIButton+Block.h"
#import <objc/runtime.h>

@implementation UIButton (Block)

static char overviewKey;

@dynamic actions;

- (void) setAction:(NSString *)action withBlock:(void(^)())block {
    if (!self.actions) {
        self.actions = [[NSMutableDictionary alloc] init];
    }
    [self.actions setObject:[block copy] forKey:action];
    
    if ([kUIButtonBlockTouchInside isEqualToString:action]) {
        [self addTarget:self action:@selector(doTouchUpInside:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)setActions:(NSMutableDictionary *)actions {
    objc_setAssociatedObject(self, &overviewKey, actions, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableDictionary *)actions {
    return objc_getAssociatedObject(self, &overviewKey);
}

- (void)doTouchUpInside:(id)sender {
    void(^block)();
    block = [self.actions objectForKey:kUIButtonBlockTouchInside];
    block();
}

@end
