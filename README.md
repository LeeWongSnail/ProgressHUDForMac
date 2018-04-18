# ProgressHUDForMac

## 文本+图片

```objc
- (IBAction)showInfo:(NSButton *)sender {
    [self art_showInfoText:@"info Text" inWindow:self.view.window];
}

```

示例：

![](http://og0h689k8.bkt.clouddn.com/18-4-18/99562354.jpg)

## 成功+图片

```objc
- (IBAction)showSuccess:(NSButton *)sender {
    [self art_showSuccessText:@"successText" inWindow:self.view.window];
}

```

示例：

![](http://og0h689k8.bkt.clouddn.com/18-4-18/64983714.jpg)

## 错误+图片

```
- (IBAction)showError:(NSButton *)sender {
    [self art_showErrorText:@"error text" inWindow:self.view.window];
    
}
```

示例：

![](http://og0h689k8.bkt.clouddn.com/18-4-18/45451641.jpg)


## Loading

```
- (IBAction)showHUDLoading:(NSButton *)sender {
    [self art_showLoading:self.view.window];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self art_dismissLoading];
    });
}
```

示例：

![](http://og0h689k8.bkt.clouddn.com/18-4-18/54091016.jpg)

## 纯文本

```
- (IBAction)showTextTest:(NSButton *)sender {
    [self art_showText:@"test" inWindow:self.view.window];
}
```

示例：

![](http://og0h689k8.bkt.clouddn.com/18-4-18/49284979.jpg)


