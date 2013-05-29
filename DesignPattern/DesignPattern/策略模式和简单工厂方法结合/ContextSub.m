//
//  ContextFactory.m
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "ContextSub.h"

@implementation ContextSub


- (void) createStrategy:(NSString *) type
{

    Strategy *tmpStrategy=nil;
    
    if (type==@"A") {
        
        tmpStrategy=[[StrategyA alloc] init];
        
    }else if (type==@"B")
    {
        tmpStrategy=[[StrategyB alloc] init];
        
    }else if (type==@"C")
    {
        tmpStrategy=[[StrategyC alloc] init];
    }

    if (tmpStrategy) {
        
        [_strategy release];
        _strategy=nil;
        _strategy=[tmpStrategy retain];
        [tmpStrategy release];
    }
    
}

@end
