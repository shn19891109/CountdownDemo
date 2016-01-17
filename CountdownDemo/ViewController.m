//
//  ViewController.m
//  CountdownDemo
//
//  Created by 苏浩楠 on 16/1/6.
//  Copyright © 2016年 苏浩楠. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+countDownBtn.h"
@interface ViewController ()

@property (nonatomic,strong) UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UIButton *countDownBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //复合语句在 Objective-C 中的使用
//    self.myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStyleGrouped];
//    self.myTableView.dataSource = self;
//    self.myTableView.delegate = self;
//    [self.view addSubview:self.myTableView];
//    
//    
//    self.myTableView = ({ UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)) style:UITableViewStyleGrouped];
//        tableView.dataSource = self;
//        tableView.delegate = self;
//        [self.view addSubview:tableView];
//        tableView;
//    });
    
}
- (IBAction)countBtnClick:(UIButton *)sender {
    [self.countDownBtn startWithTime:5 normalTitle:@"获取验证码" subTitle:@"s" normalColor:[UIColor colorWithRed:84/255.0 green:180/255.0 blue:98/255.0 alpha:1.0f] countColor:[UIColor lightGrayColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
