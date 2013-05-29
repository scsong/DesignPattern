//
//  OperationFactory.m
//  DesignPattern
//
//  Created by sun cs on 13-5-28.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "OperationFactory.h"


@implementation OperationFactory

+ (Operation *) createOperation:(NSString *) operation
{
    Operation *result=nil;
    if (operation==@"+") {
        result=[[OperationAdd alloc] init];
    }else if(operation==@"-")
    {
        result=[[OperationSub alloc] init];
    }else if (operation==@"*")
    {
        result=[[OperationMul alloc] init];
    }else if (operation==@"/")
    {
        result=[[OperationDiv alloc] init];
    }
    
    return [result autorelease];
}

@end
