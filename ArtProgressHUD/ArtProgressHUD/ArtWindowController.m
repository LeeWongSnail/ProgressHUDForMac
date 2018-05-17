//
//  ArtWindowController.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/5/17.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import "ArtWindowController.h"
#import "ViewController.h"
@interface ArtWindowController ()

@end

@implementation ArtWindowController


- (instancetype)init {
    NSStoryboard *sb = [NSStoryboard storyboardWithName:@"Art" bundle:[NSBundle mainBundle]];
    
    ViewController *viewController = [sb instantiateControllerWithIdentifier:@"ViewController"];
    NSWindow *window = [NSWindow windowWithContentViewController:viewController];
    window.collectionBehavior = NSWindowCollectionBehaviorFullScreenPrimary|NSWindowCollectionBehaviorDefault|NSWindowCollectionBehaviorManaged;
//    // 隐藏titlebar
//    window.titlebarAppearsTransparent=YES;
//    window.titleVisibility = NSWindowTitleHidden;
//    window.styleMask = NSWindowStyleMaskFullSizeContentView | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable;
//    // 隐藏关闭等按钮
//    [[window standardWindowButton:NSWindowZoomButton] setHidden:YES];
//    [[window standardWindowButton:NSWindowMiniaturizeButton] setHidden:YES];
//    [[window standardWindowButton:NSWindowCloseButton] setHidden:YES];
//    //设置窗口为透明
//    [window setOpaque:YES];
//    //设置背景无色
//    [window setBackgroundColor:[NSColor clearColor]];
    //设置为点击背景可以移动窗口
    [window setMovableByWindowBackground:YES];
    //固定大小
    NSSize size = NSMakeSize(500, 650);
    [window setResizeIncrements:size];
    window.minSize = size;
    window.maxSize = size;
    [window setFrame:NSMakeRect(0, 0, size.width, size.height) display:YES];
    [window center];
    [window becomeKeyWindow];
    [window becomeMainWindow];

    return [self initWithWindow:window];
}

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    
    self.window.backgroundColor = [NSColor redColor];
}

@end
