//
//  Strategy.h
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Strategy : NSObject


- (void) algorithmInterface;

@end


@interface StrategyA : Strategy


@end

@interface StrategyB : Strategy


@end


@interface StrategyC : Strategy


@end