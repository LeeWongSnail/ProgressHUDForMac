//
//  NSObject+HUD.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/18.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import "NSObject+HUD.h"
#import "ArtProgressHUD.h"
#import "AppDelegate.h"

@implementation NSObject (HUD)

- (void)art_showText:(NSString *)aText
{
    [ArtProgressHUD showText:aText];
}

- (void)art_showInfoText:(NSString *)aText
{
    [ArtProgressHUD showInfoText:aText];
}

- (void)art_showErrorText:(NSString *)aText
{
    [ArtProgressHUD showErrorText:aText];
}


- (void)art_showSuccessText:(NSString *)aText
{
    [ArtProgressHUD showSuccessText:aText];
}

- (void)art_showLoading
{
    [self art_showLoading:nil];
}

- (void)art_showLoading:(NSView *)aView
{
    [ArtProgressHUD showLoading:aView];

}

- (void)art_dismissLoading
{
    [ArtProgressHUD dismissLoading];
}

- (void)art_showText:(NSString *)aText type:(EArtProgressHUDType)aType inView:(NSView *)aView
{
    [ArtProgressHUD showText:aText type:aType inView:aView];
}
@end
