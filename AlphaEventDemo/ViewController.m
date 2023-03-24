//
//  ViewController.m
//  AlphaEventDemo
//
//  Created by MakeID-研发 on 2023/3/22.
//

#import "ViewController.h"
#import "AlphaEventImageView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AlphaEventImageView *alphaImage1 = [[AlphaEventImageView alloc] initWithImage:[UIImage imageNamed:@"test1"]];
    alphaImage1.tag = 1001;
    alphaImage1.frame = CGRectMake(100, 100, 100, 100);
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap1Click)];
    [alphaImage1 addGestureRecognizer:tap1];
    [self.view addSubview:alphaImage1];
    
    
    AlphaEventImageView *alphaImage2 = [[AlphaEventImageView alloc] initWithImage:[UIImage imageNamed:@"test2"]];
    alphaImage2.tag = 1002;
    alphaImage2.frame = CGRectMake(100, 300, 100, 100);
    [self.view addSubview:alphaImage2];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap2Click)];
    [alphaImage2 addGestureRecognizer:tap2];
    
    
    AlphaEventImageView *alphaImage3 = [[AlphaEventImageView alloc] initWithImage:[UIImage imageNamed:@"test1"]];
    alphaImage3.tag = 1003;
    alphaImage3.frame = CGRectMake(100, 500, 100, 100);
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap3Click)];
    [alphaImage3 addGestureRecognizer:tap3];
    [self.view addSubview:alphaImage3];
    
    
    AlphaEventImageView *alphaImage4 = [[AlphaEventImageView alloc] initWithImage:[UIImage imageNamed:@"test2"]];
    alphaImage4.tag = 1004;
    alphaImage4.frame = CGRectMake(100, 550, 100, 100);
    [self.view addSubview:alphaImage4];
    UITapGestureRecognizer *tap4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap4Click)];
    [alphaImage4 addGestureRecognizer:tap4];
    // Do any additional setup after loading the view.
}

- (void)tap1Click {
    NSLog(@"点击兔子的不透明部分");
}

- (void)tap2Click {
    NSLog(@"点击baby的不透明部分");
}

- (void)tap3Click {
    NSLog(@"点击兔子的不透明部分");
}

- (void)tap4Click {
    NSLog(@"点击baby的不透明部分");
}


@end
