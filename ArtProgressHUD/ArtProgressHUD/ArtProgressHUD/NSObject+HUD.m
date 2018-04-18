//
//  NSObject+HUD.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/18.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import "NSObject+HUD.h"
#import "ArtProgressHUD.h"

@implementation NSObject (HUD)

- (void)art_showText:(NSString *)aText inWindow:(NSWindow *)aWindow
{
    [ArtProgressHUD showText:aText inWindow:aWindow];
}

- (void)art_showInfoText:(NSString *)aText inWindow:(NSWindow *)aWindow
{
    [ArtProgressHUD showInfoText:aText inWindow:aWindow];
}

- (void)art_showErrorText:(NSString *)aText inWindow:(NSWindow *)aWindow
{
    [ArtProgressHUD showErrorText:aText inWindow:aWindow];
}


- (void)art_showSuccessText:(NSString *)aText inWindow:(NSWindow *)aWindow
{
    [ArtProgressHUD showSuccessText:aText inWindow:aWindow];
}

- (void)art_showLoading:(NSWindow *)aWindow
{
    [ArtProgressHUD showLoading:aWindow];

}

- (void)art_dismissLoading
{
    [ArtProgressHUD dismissLoading];
}
@end
