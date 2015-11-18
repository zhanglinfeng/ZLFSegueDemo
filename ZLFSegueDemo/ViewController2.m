//
//  ViewController2.m
//  ZLFSegueDemo
//
//  Created by 张林峰 on 15/11/17.
//  Copyright © 2015年 张林峰. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//其他界面返回到此界面调用的方法
- (IBAction)ViewController2UnwindSegue:(UIStoryboardSegue *)unwindSegue {
    if ([unwindSegue.identifier isEqualToString:@"from3to2"]) {
        _lbShowMessage.text = @"从3退到2";
    }
}

- (IBAction)back:(id)sender {
    [self performSegueWithIdentifier:@"from2to1" sender:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
