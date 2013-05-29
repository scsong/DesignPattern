//
//  Strategy.m
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "Strategy.h"

@implementation Strategy

- (void) algorithmInterface
{

}

@end


@implementation StrategyA

- (void) algorithmInterface
{
    NSLog(@"StrategyA method");
}

@end


@implementation StrategyB

- (void) algorithmInterface
{
    NSLog(@"StrategyB method");
}

@end


@implementation StrategyC

- (void) algorithmInterface
{
    NSLog(@"StrategyC method");
}

@end