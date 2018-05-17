//
//  NSObject+HUD.h
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/18.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArtProgressHUD.h"
#import <AppKit/AppKit.h>

@interface NSObject (HUD)

- (void)art_showText:(NSString *)aText;
- (void)art_showInfoText:(NSString *)aText;
- (void)art_showSuccessText:(NSString *)aText;
- (void)art_showErrorText:(NSString *)aText;
- (void)art_showText:(NSString *)aText type:(EArtProgressHUDType)aType inView:(NSView *)aView;

- (void)art_showLoading:(NSView *)aView;
- (void)art_dismissLoading;
@end
