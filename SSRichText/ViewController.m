//
//  ViewController.m
//  SSRichText
//
//  Created by lss on 2017/4/19.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "ViewController.h"
#import "NSString+RichText.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *textLable;
@property (weak, nonatomic) IBOutlet UILabel *text2Lable;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *text = @"今天天气不错,在家睡觉真舒服,今天天气不错,在家睡觉真舒服,今天天气不错,在家睡觉真舒服,今天天气不错,在家睡觉真舒服,今天天气不错,在家睡觉真舒服,";
    _textLable.numberOfLines = 0;
    _textLable.lineBreakMode = NSLineBreakByCharWrapping;
    
    NSAttributedString *attri = [text ss_makeAttristring:^(SSRichTextMake *make) {
        [make.ss_color([UIColor redColor]).ss_range([text rangeOfString:@"今天天气不错"]) end];
        [make.ss_font(40).ss_bgColor([UIColor yellowColor]).ss_rangeRef(22,7) end];
    }];
    
    _textLable.attributedText = attri;

    NSAttributedString *attri2 = [text ss_makeAttristring:^(SSRichTextMake *make) {
        [make.ss_font(25).ss_color([UIColor yellowColor]).ss_bgColor([UIColor blueColor]).ss_rangeRef(0, 6) end];
        [make.ss_underline(NSUnderlineStyleThick).ss_underlineColor([UIColor redColor]).ss_rangeRef(0,6) end];
        make.ss_color([UIColor grayColor]).ss_font(40).ss_strikethrough(NSUnderlineStyleSingle).ss_rangeRef(18,10).ss_strikethroughColor([UIColor redColor]).ss_end();
    }];
    
    _text2Lable.attributedText = attri2;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
