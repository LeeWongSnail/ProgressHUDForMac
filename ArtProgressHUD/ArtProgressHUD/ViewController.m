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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

}

- (IBAction)showInfo:(NSButton *)sender {
    [self art_showInfoText:@"info Text" inWindow:self.view.window];
}

- (IBAction)showSuccess:(NSButton *)sender {
    [self art_showSuccessText:@"successText" inWindow:self.view.window];
}

- (IBAction)showError:(NSButton *)sender {
    [self art_showErrorText:@"error text" inWindow:self.view.window];
    
}
- (IBAction)showHUDLoading:(NSButton *)sender {
    [self art_showLoading:self.view.window];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self art_dismissLoading];
    });
}

- (IBAction)showTextTest:(NSButton *)sender {
    [self art_showText:@"test" inWindow:self.view.window];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
