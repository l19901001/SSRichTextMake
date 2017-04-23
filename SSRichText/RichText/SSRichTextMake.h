//
//  SSRichTextMake.h
//  SSRichText
//
//  Created by lss on 2017/4/19.
//  Copyright © 2017年 lss. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSRichTextModel.h"

@interface SSRichTextMake : NSObject <UITableViewDelegate>
typedef void(^SSEnd)();
typedef SSRichTextMake *(^SSFont)(CGFloat font);
typedef SSRichTextMake *(^SSColor)(UIColor *color);
typedef SSRichTextMake *(^SSRangeRef)(NSUInteger loc, NSUInteger len);
typedef SSRichTextMake *(^SSRange)(NSRange range);
typedef SSRichTextMake *(^SSBgColor)(UIColor *bgColor);
typedef SSRichTextMake *(^SSUnderline)(NSUnderlineStyle underlineStyle);
typedef SSRichTextMake *(^SSUnderlineColor)(UIColor *underlineColor);
typedef SSRichTextMake *(^SSStrikethrough)(NSUnderlineStyle strikethrough);
typedef SSRichTextMake *(^SSStrikethroughColor)(UIColor *strikethroughColor);
typedef SSRichTextMake *(^SSStrikethroughColor)(UIColor *strikethroughColor);
//最后必须调用 setModel
-(void)end;
@property (nonatomic, copy) SSEnd ss_end;

@property (nonatomic, strong) NSMutableArray *attriArray;

//字体大小
@property (nonatomic, copy) SSFont ss_font;
//字体颜色
@property (nonatomic, copy) SSColor ss_color;
//范围,如 ss_range(NSMakeRange(0, 5));
@property (nonatomic, copy) SSRange ss_range;
//范围,如 ss_rangeRef(0, 5);
@property (nonatomic, copy) SSRangeRef ss_rangeRef;
//文本字体背景色
@property (nonatomic, copy) SSBgColor ss_bgColor;
//下划线
@property (nonatomic, copy) SSUnderline ss_underline;
//下划线颜色
@property (nonatomic, copy) SSUnderlineColor ss_underlineColor;
//删除线
@property (nonatomic, copy) SSStrikethrough ss_strikethrough;
//删除线颜色
@property (nonatomic, copy) SSStrikethroughColor ss_strikethroughColor;

@end
