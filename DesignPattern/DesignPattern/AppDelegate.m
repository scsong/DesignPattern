//
//  sun_csAppDelegate.m
//  DesignPattern
//
//  Created by sun cs on 13-5-28.
//  Copyright (c) 2013年 com.ylcx. All rights reserved.
//

#import "AppDelegate.h"
#import "OperationFactory.h"
#import "Context.h"
#import "ContextSub.h"

#import "ConcreteComponent.h"
#import "ConcreteDecorator.h"


@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // test 简单工厂模式
    Operation *operation=[OperationFactory createOperation:@"/"];
    [operation setNumberA:12.0];
    [operation setNumberB:10.0];
    float result=[operation getResult];
    NSLog(@"%f",result);
    
    
    // test 策略模式
    Context *context=[[Context alloc] init];
    StrategyA *strategyA=[[StrategyA alloc] init];
    [context createStrategy:strategyA];
    [context getResult];
    [context release];
    [strategyA release];
    context=nil;
    strategyA=nil;
    
    
    context=[[Context alloc] init];
    StrategyB *strategyB=[[StrategyB alloc] init];
    [context createStrategy:strategyB];
    [context getResult];
    [context release];
    [strategyB release];
    context=nil;
    strategyB=nil;
    
    // test 策略模式和简单工厂的结合
    ContextSub *contextsub=[[ContextSub alloc] init];
    [contextsub createStrategy:@"B"];
    [contextsub getResult];
    
    
    // test 装饰模式
    
    id <Component> concreteComponent=[[ConcreteComponent alloc] init];
    Decorator *decorator=[[ConcreteDecorator alloc] init];
    [decorator setComponent:concreteComponent];
    [decorator operation];
    [concreteComponent release];
    [decorator release];
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
