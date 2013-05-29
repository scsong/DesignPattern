//
//  Operation.m
//  DesignPattern
//
//  Created by sun cs on 13-5-28.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "Operation.h"

@implementation Operation

- (void) setNumberA:(float) numberA
{
    _numberA=numberA;
}
- (void) setNumberB:(float) numberB
{
    _numberB=numberB;
}


- (float) getResult
{
    float result=0.0;
    return result;
}

@end


@implementation OperationAdd

- (float) getResult
{
    float result=0.0;
    result=_numberA+_numberB;
    return result;
}

@end




@implementation OperationSub

- (float) getResult
{
    float result=0.0;
    result=_numberA-_numberB;
    return result;
}

@end




@implementation OperationMul

- (float) getResult
{
    float result=0.0;
    result=_numberA*_numberB;
    return result;
}

@end




@implementation OperationDiv

- (float) getResult
{
    float result=0.0;
    
    if (_numberB==0) {
        NSException *exception=[NSException exceptionWithName:@"Mut error exception" reason:@"mult should not 0" userInfo:nil];
        @throw exception;
    }
    
    result=_numberA/_numberB;
    return result;
}

@end
