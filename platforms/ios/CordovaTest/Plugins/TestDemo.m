//
//  TestDemo.m
//  CordovaTest
//
//  Created by 朱路路 on 16/5/12.
//
//

#import "TestDemo.h"

@implementation ATestDemo
-(void) echo:(CDVInvokedUrlCommand *) command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    
    if (echo == nil || [echo  isEqual: @""])
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"空"];
    }
    else if ([echo isEqualToString: @"Hi"] )
    {
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        NSLog(@"怎么跳转");
       
    }else{
         pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"不对"];
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
//线程处理
//- (void)myPluginMethod:(CDVInvokedUrlCommand*)command
//{
//    // Check command.arguments here.
//    [self.commandDelegate runInBackground:^{
//        NSString* payload = nil;
//        // Some blocking logic...
//        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:payload];
//        // The sendPluginResult method is thread-safe.
//        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
//    }];
//}
//^{};用来等待queue里的最后一个block被执行掉，常用操作之一
//^这个东西，说明一个块函数，（）这个东西是块里面需要的参数｛｝执行体
//需要注意的是 weakSelf ， 不是直接使用self， 防止循环引用

@end
