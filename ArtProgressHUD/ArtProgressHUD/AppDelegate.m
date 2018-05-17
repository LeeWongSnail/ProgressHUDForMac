//
//  AppDelegate.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/13.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import "AppDelegate.h"
#import "ArtWindowController.h"

@interface AppDelegate ()
@property (nonatomic, strong) ArtWindowController *artWindow;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    self.artWindow = [[ArtWindowController alloc] init];
    [self.artWindow showWindow:self];
    self.mainWC = self.artWindow;
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
