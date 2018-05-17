//
//  main.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/13.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "AppDelegate.h"

int main(int argc, const char * argv[]) {
    NSApplication*applicaton = [NSApplication sharedApplication];
    id delegete = [[AppDelegate alloc]init];
    
    applicaton.delegate= delegete;
    return NSApplicationMain(argc, argv);
}
