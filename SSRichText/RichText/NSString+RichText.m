//
//  NSString+RichText.m
//  SSRichText
//
//  Created by lss on 2017/4/19.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "NSString+RichText.h"

@implementation NSString (RichText)

-(NSAttributedString *)ss_makeAttristring:(MakeBlock)make
{
    SSRichTextMake *richText = [[SSRichTextMake alloc] init];
    
    if(make){
        make(richText);
    }
    
    __block NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:self];
    __weak typeof(self) wself = self;
    [richText.attriArray enumerateObjectsUsingBlock:^(SSRichTextModel *model, NSUInteger idx, BOOL * _Nonnull stop) {
        if(model.ss_range.location == 0 && model.ss_range.length == 0){
            model.ss_range = NSMakeRange(0, self.length);
        }
        
        attri = [wself setAttriString:attri model:model];
    }];
    
    return attri;
}

//设置简单的富文本(颜色,字体大小)
-(NSMutableAttributedString *)setAttriString:(NSMutableAttributedString *)attri model:(SSRichTextModel *)model
{
    if(model.ss_font){
        [attri addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:model.ss_font] range:model.ss_range];
    }
    if(model.ss_color){
        [attri addAttribute:NSForegroundColorAttributeName value:model.ss_color range:model.ss_range];
    }
    if(model.ss_bgColor){
        [attri addAttribute:NSBackgroundColorAttributeName value:model.ss_bgColor range:model.ss_range];
    }
    if(model.ss_lineStyle){
        [attri addAttribute:NSUnderlineStyleAttributeName value:model.ss_lineStyle range:model.ss_range];
    }
    if(model.ss_strikethrough){
        [attri addAttribute:NSStrikethroughStyleAttributeName value:model.ss_strikethrough range:model.ss_range];
    }
    if(model.ss_lineColor){
        [attri addAttribute:NSUnderlineColorAttributeName value:model.ss_lineColor range:model.ss_range];
    }
    if(model.ss_strikethroughColor){

        [attri addAttribute:NSStrikethroughColorAttributeName value:model.ss_strikethroughColor range:model.ss_range];
    }

    return attri;
}

@end
