//
//  MRJViewController.m
//  MRJInputView
//
//  Created by mrjlovetian@gmail.com on 04/03/2018.
//  Copyright (c) 2018 mrjlovetian@gmail.com. All rights reserved.
//

#import "MRJViewController.h"
#import "MRJInputFormView.h"

@interface MRJViewController ()

@property (nonatomic, strong) UIScrollView *scrollView;

@end

@implementation MRJViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.scrollView];
	
    self.view.backgroundColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0];
    MRJInputFormView *inputView = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 45)];
    inputView.title = @"名称";
    [self.scrollView addSubview:inputView];
    
    MRJInputFormView *inputView1 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 52, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView1 setArrowViewWithTitle:@"名称1" placeholder:@"第一个" onClicked:^(FillFormBase *fillFrom) {
        
    }];
    [self.scrollView addSubview:inputView1];
    
    MRJInputFormView *inputView2 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 104, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView2 setArrowViewWithTitle:@"名称2" placeholder:@"第二个" tipsText:@"标签" onClicked:^(FillFormBase *fillFrom) {
        
    }];
    inputView2.title = @"名称2";
    [self.scrollView addSubview:inputView2];
    
    MRJInputFormView *inputView3 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 156, [UIScreen mainScreen].bounds.size.width, 45)];
    inputView3.title = @"名称3";
    [inputView3 setText1:@"第一" text2:@"第二"];
    [self.scrollView addSubview:inputView3];
    
    MRJInputFormView *inputView4 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 208, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView4 setUnitViewWithTitle:@"名称4" placeholder:@"名称啥" unit:@"万元"];
    [self.scrollView addSubview:inputView4];

    MRJInputFormView *inputView5 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 260, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView5 setSwitchWithTitle:@"标题5" switchTarget:self action:@selector(switchClick)];
    [self.scrollView addSubview:inputView5];
    
    MRJInputFormView *inputView6 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 312, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView6 setSegmentedControlWithTitle:@"标题6" dataArray:@[@"百度", @"谷歌"] controlTarget:self action:@selector(segClick)];
    [self.scrollView addSubview:inputView6];
    
    MRJInputFormView *inputView7 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 364, [UIScreen mainScreen].bounds.size.width, 45)];
    [inputView7 setCloseButtonWithTitle:@"标题7" isClose:YES onClicked:^(UIButton * _Nullable btn, BOOL isClose) {
        
    }];
    [self.scrollView addSubview:inputView7];
    
    MRJInputFormView *inputView8 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 416, [UIScreen mainScreen].bounds.size.width, 45)];
    inputView8.title = @"标题8";
//    [inputView8 setTitleTips:@"tip"];
    [self.scrollView addSubview:inputView8];
    
    MRJInputFormView *inputView9 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 468, [UIScreen mainScreen].bounds.size.width, 45)];
    inputView9.title = @"标题9";
//    [inputView9 setTipsText:@"标题"];
    [self.scrollView addSubview:inputView9];
    
    MRJInputFormView *inputView10 = [[MRJInputFormView alloc] initWithFrame:CGRectMake(0, 100 + 520, [UIScreen mainScreen].bounds.size.width, 45)];
    inputView10.title = @"标题";
    [inputView10 setTagList:@[@"哈哈", @"嘿嘿", @"吼吼"]];
    [self.scrollView addSubview:inputView10];
    
    _scrollView.contentSize = CGSizeMake(0, inputView10.frame.origin.y + 100);
}

- (void)switchClick {
    
}

- (void)segClick {
    
}

- (void)tap {
    [self.view endEditing:YES];
}

- (UIScrollView *)scrollView {
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
        [_scrollView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)]];
    }
    return _scrollView;
}


@end
