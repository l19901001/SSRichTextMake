# SSRichTextMake
富文本字符设置,链式编码
    NSString *text = @"每个iOS应用都有自己的应用沙盒(应用沙盒就是文件系统目录)，与其他文件系统隔离。应用必须待在自己的沙盒里，其他应用不能访问该沙盒应用沙盒的文件系统目录，如下图所示（假设应用的名称叫Layer)";
    _textLable.numberOfLines = 0;
    _textLable.lineBreakMode = NSLineBreakByCharWrapping;
    
    NSAttributedString *attri = [text ss_makeAttristring:^(SSRichTextMake *make) {
        [make.ss_color([UIColor redColor]).ss_range([text rangeOfString:@"应用沙盒就是文件系统目录"]) end];
        [make.ss_font(40).ss_bgColor([UIColor yellowColor]).ss_rangeRef(22,7) end];
    }];
    
    _textLable.attributedText = attri;

    NSAttributedString *attri2 = [text ss_makeAttristring:^(SSRichTextMake *make) {
        [make.ss_font(25).ss_color([UIColor yellowColor]).ss_bgColor([UIColor blueColor]).ss_rangeRef(0, 6) end];
        [make.ss_underline(NSUnderlineStyleThick).ss_underlineColor([UIColor redColor]).ss_rangeRef(0,6) end];
        make.ss_color([UIColor grayColor]).ss_font(40).ss_strikethrough(NSUnderlineStyleSingle).ss_range([text rangeOfString:@"应用沙盒就是文件系统目录"]).ss_strikethroughColor([UIColor redColor]).ss_end();
    }];
    
    _text2Lable.attributedText = attri2;
