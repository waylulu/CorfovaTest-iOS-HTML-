//
//  TestDemo.h
//  CordovaTest
//
//  Created by 朱路路 on 16/5/12.
//
//

#import <Cordova/CDV.h>

@interface ATestDemo : CDVPlugin
//实例方法
-(void) echo:(CDVInvokedUrlCommand *) command;
@end
