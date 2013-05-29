//
//  Operation.h
//  DesignPattern
//
//  Created by sun cs on 13-5-28.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject
{
    float _numberA;
    float _numberB;

}

- (void) setNumberA:(float) numberA;
- (void) setNumberB:(float) numberB;

- (float) getResult;

@end


@interface OperationAdd : Operation

@end

@interface OperationSub : Operation

@end

@interface OperationMul : Operation

@end

@interface OperationDiv : Operation

@end



