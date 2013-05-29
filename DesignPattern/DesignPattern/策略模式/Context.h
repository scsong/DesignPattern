//
//  Context.h
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

@interface Context : NSObject
{
    Strategy *_strategy;
}


- (void) createStrategy:(Strategy *) strategy;

- (void) getResult;

@end
