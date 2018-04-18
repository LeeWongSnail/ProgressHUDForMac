//
//  NSObject+HUD.h
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/18.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSObject (HUD)
- (void)art_showText:(NSString *)aText inWindow:(NSWindow *)aWindow;
- (void)art_showInfoText:(NSString *)aText inWindow:(NSWindow *)aWindow;
- (void)art_showSuccessText:(NSString *)aText inWindow:(NSWindow *)aWindow;
- (void)art_showErrorText:(NSString *)aText inWindow:(NSWindow *)aWindow;

- (void)art_showLoading:(NSWindow *)aWindow;
- (void)art_dismissLoading;
@end
