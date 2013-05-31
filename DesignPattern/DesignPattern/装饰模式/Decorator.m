//
//  Decorator.m
//  DesignPattern
//
//  Created by sun cs on 13-5-31.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "Decorator.h"

@implementation Decorator


- (void) setComponent:(id <Component>) component
{

    [_component release];
    _component=nil;
    _component=[component retain];
    
}


- (void) operation
{
    [_component operation];
}

@end
