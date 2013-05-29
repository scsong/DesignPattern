//
//  Context.m
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "Context.h"

@implementation Context

- (void) createStrategy:(Strategy *) strategy
{
    [_strategy release];
    _strategy=nil;
    _strategy=[strategy retain];
}

- (void) getResult
{
    [_strategy algorithmInterface];
}

@end
