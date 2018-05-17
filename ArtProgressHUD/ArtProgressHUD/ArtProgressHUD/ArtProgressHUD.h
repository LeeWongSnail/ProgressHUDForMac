//
//  ArtProgressHud.h
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/13.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import <AppKit/AppKit.h>

typedef NS_ENUM(NSUInteger, EArtProgressHUDType){
    EArtProgressHUDInfo = 0,    //有图片的显示文本
    EArtProgressHUDWarning,     //警告
    EArtProgressHUDError,       //错误
    EArtProgressHUDSuccess,     //成功
    EArtProgressHUDLoading,     //loading
    EArtProgressHUDTypeNone     //无图片纯文字
};

@interface ArtProgressHUD : NSWindowController

+ (void)showText:(NSString *)aText;
+ (void)showInfoText:(NSString *)aText;
+ (void)showErrorText:(NSString *)aText;
+ (void)showSuccessText:(NSString *)aText;
+ (void)showText:(NSString *)aText type:(EArtProgressHUDType)aType inView:(NSView *)aView;

+ (void)showLoading:(NSView *)aView;
+ (void)dismissLoading;
@end
