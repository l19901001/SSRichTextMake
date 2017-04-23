//
//  NSString+RichText.h
//  SSRichText
//
//  Created by lss on 2017/4/19.
//  Copyright © 2017年 lss. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "SSRichTextMake.h"

typedef void(^MakeBlock)(SSRichTextMake *make);

@interface NSString (RichText)

/**
 @param make 属性设置 block
 @return  携带设置属性的属性文本
 */
-(NSAttributedString *)ss_makeAttristring:(MakeBlock)make;

@end
