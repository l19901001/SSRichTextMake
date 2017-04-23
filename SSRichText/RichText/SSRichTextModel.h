//
//  SSRichTextModel.h
//  SSRichText
//
//  Created by lss on 2017/4/20.
//  Copyright © 2017年 lss. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSRichTextModel : NSObject
//字体大小
@property (nonatomic, assign) CGFloat ss_font;
//字体颜色
@property (nonatomic, strong) UIColor *ss_color;
//设置范围
@property (nonatomic, assign) NSRange ss_range;
//文本背景色
@property (nonatomic, strong) UIColor *ss_bgColor;
//下划线
@property (nonatomic, strong) NSNumber *ss_lineStyle;
//下划线颜色
@property (nonatomic, strong) UIColor *ss_lineColor;
//删除线
@property (nonatomic, strong) NSNumber *ss_strikethrough;
//删除线颜色
@property (nonatomic, strong) UIColor *ss_strikethroughColor;


@end
