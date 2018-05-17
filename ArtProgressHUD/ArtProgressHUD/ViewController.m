//
//  ViewController.m
//  ArtProgressHUD
//
//  Created by LeeWong on 2018/4/13.
//  Copyright © 2018年 LeeWong. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+HUD.h"

@interface ViewController ()
@property (weak) IBOutlet NSView *leftView;
@property (weak) IBOutlet NSView *rightView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.wantsLayer = YES;
    
    self.leftView.wantsLayer = YES;
    self.rightView.wantsLayer = YES;
    
    self.leftView.layer.backgroundColor = [[NSColor redColor] CGColor];
    self.rightView.layer.backgroundColor = [[NSColor blueColor] CGColor];
    
}

- (IBAction)showInfo:(NSButton *)sender {
    [self art_showInfoText:@"infoText"];
}

- (IBAction)showSuccess:(NSButton *)sender {
    [self art_showSuccessText:@"successText"];
}

- (IBAction)showError:(NSButton *)sender {
    [self art_showErrorText:@"error text"];
    
}
- (IBAction)showHUDLoading:(NSButton *)sender {
    [self art_showLoading:self.view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self art_dismissLoading];
    });
}

- (IBAction)showTextTest:(NSButton *)sender {
//    [self art_showText:@"test"];
    [self art_showText:@"test" type:EArtProgressHUDSuccess inView:self.rightView];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
