//
//  OperationFactory.h
//  DesignPattern
//
//  Created by sun cs on 13-5-28.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

@interface OperationFactory : NSObject

+ (Operation *) createOperation:(NSString *) operation;

@end
