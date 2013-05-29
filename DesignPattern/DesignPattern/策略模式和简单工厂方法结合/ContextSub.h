//
//  ContextFactory.h
//  DesignPattern
//
//  Created by sun cs on 13-5-29.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "Context.h"

@interface ContextSub : Context

- (void) createStrategy:(NSString *) type;
@end
