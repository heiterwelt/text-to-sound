//
//  ViewController.m
//  avfoundationac
//
//  Created by Linyou-IOS-1 on 16/5/6.
//  Copyright © 2016年 MuYou INTERACTIVE TECHNOLOGY LIMITED. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVSpeechSynthesis.h>
#import <AVFoundation/AVSynchronizedLayer.h>

@interface ViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *textS;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AVSpeechSynthesizer *av =[[AVSpeechSynthesizer alloc]init]; AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc]initWithString:@"笑你妹"]; //需要转换的文本
    [av speakUtterance:utterance];
    self.textS=[[UITextField alloc]initWithFrame:CGRectMake(0, 90, 150, 50)];
    [self.view addSubview:self.textS];
    
    _textS.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [_textS resignFirstResponder];
    return YES; }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
