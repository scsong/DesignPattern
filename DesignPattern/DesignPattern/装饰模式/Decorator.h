//
//  Decorator.h
//  DesignPattern
//
//  Created by sun cs on 13-5-31.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Component.h"

@interface Decorator : NSObject <Component>
{
    id <Component> _component;

}

- (void) setComponent:(id) component;

@end
