//
//  CordovaTest.swift
//  CordovaTest
//
//  Created by 朱路路 on 16/5/12.
//
//

import Foundation

@objc(ACordovaTest) class CordovaTest : CDVPlugin {
    
    //验证口令方法
    func verifyPassword(command:CDVInvokedUrlCommand)
    {
        //返回结果
        var pluginResult:CDVPluginResult?
        //获取参数
        let password = command.arguments[0] as? String
//        let userName = command.arguments[1] as? String
        
        //开始验证
        if password == nil || password == "" {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR,
                                           messageAsString: "密码不能为空")
        }else if password != "Hangge" {
            pluginResult = CDVPluginResult(status: CDVCommandStatus_ERROR,
                                           messageAsString: "密码不正确")
        }else{
            pluginResult = CDVPluginResult(status:CDVCommandStatus_OK)
            //写代码
            print("登录成功")
            
            
        }
//        if userName == nil || userName == "" {
//            pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR,messageAsString: "账号不能为空")
//        }else{
//            
//        }
        //发送结果
        self.commandDelegate.sendPluginResult(pluginResult, callbackId: command.callbackId)
        
    }
}
