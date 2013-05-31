//
//  ConcreteDecorator.m
//  DesignPattern
//
//  Created by sun cs on 13-5-31.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "ConcreteDecorator.h"

@implementation ConcreteDecorator


- (void) addOperation
{

    NSLog(@"should add addention operate");

}

- (void) operation
{
    [super operation];
    
    [self addOperation];
}


@end
