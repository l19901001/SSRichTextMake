//
//  SSRichTextMake.m
//  SSRichText
//
//  Created by lss on 2017/4/19.
//  Copyright © 2017年 lss. All rights reserved.
//

#import "SSRichTextMake.h"

@interface SSRichTextMake ()
//字体大小
@property (nonatomic, assign) CGFloat font;
//字体颜色
@property (nonatomic, strong) UIColor *color;
//设置范围
@property (nonatomic, assign) NSRange range;
//文本字体背景色
@property (nonatomic, strong) UIColor *bgColor;
//下划线
@property (nonatomic, strong) NSNumber *lineStyle;
//删除线
@property (nonatomic, strong) NSNumber *strikethrough;
//下划线颜色
@property (nonatomic, strong) UIColor *lineStyleColor;
//删除线颜色
@property (nonatomic, strong) UIColor *strikethroughColor;


@end

@implementation SSRichTextMake

-(instancetype)init
{
    self = [super init];
    if(self){
        _attriArray = [NSMutableArray array];
    }
    return self;
}

-(SSFont)ss_font
{
    return ^(CGFloat font){
        _font = font;
        return self;
    };
}

-(SSColor)ss_color
{
    return ^(UIColor *color){
        _color = color;
        return self;
    };
}

-(SSRangeRef)ss_rangeRef
{
    return ^(NSUInteger loc, NSUInteger len){
        _range = NSMakeRange(loc, len);
        return self;
    };
}
-(SSRange)ss_range
{
    return ^(NSRange range){
        _range = range;
        return self;
    };
}

-(SSBgColor)ss_bgColor
{
    return ^(UIColor *bg_color){
        _bgColor = bg_color;
        return self;
    };
}

-(SSUnderline)ss_underline
{
    return ^(NSUnderlineStyle style){
        _lineStyle = [NSNumber numberWithInteger:style];
        return self;
    };
}

-(SSUnderlineColor)ss_underlineColor
{
    return ^(UIColor *underlineColor){
        _lineStyleColor = underlineColor;
        return self;
    };
}

-(SSStrikethrough)ss_strikethrough
{
    return ^(NSUnderlineStyle strikethrough){
        _strikethrough = [NSNumber numberWithInteger:strikethrough];
        return self;
    };
}

-(SSStrikethroughColor)ss_strikethroughColor
{
    return ^(UIColor *strikethroughColor){
        _strikethroughColor = strikethroughColor;
        return self;
    };
}

-(SSEnd)ss_end
{
    __weak typeof(self) wself = self;
    return ^(){
        [wself end];
    };
}

-(void)end
{
    SSRichTextModel *model = [[SSRichTextModel alloc] init];
    model.ss_font = _font;
    model.ss_color = _color;
    model.ss_range = _range;
    model.ss_bgColor = _bgColor;
    model.ss_lineStyle = _lineStyle;
    model.ss_lineColor = _lineStyleColor;
    model.ss_strikethrough = _strikethrough;
    model.ss_strikethroughColor = _strikethroughColor;
    
    _font = 0;
    _color = nil;
    _range = NSMakeRange(0, 0);
    _bgColor = nil;
    _lineStyle = nil;
    _lineStyleColor = nil;
    _strikethrough = nil;
    _strikethroughColor = nil;
    
    [_attriArray addObject:model];
}

@end
