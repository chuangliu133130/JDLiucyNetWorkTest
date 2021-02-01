//
//  ViewController.m
//  JDLiucyNetWorkTest
//
//  Created by liuchaoyang18 on 2021/2/1.
//http://www.liulongbin.top:3005/api/v2/movie/top250

#import "ViewController.h"
#import <JDLiucyNetWork/JDLiucyNetWork.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    // Do any additional setup after loading the view.
}
- (IBAction)sendRequestClick:(id)sender
{
    [JDLiucyNetWork GETWithUrlString:@"http://www.liulongbin.top:3005/api/v2/movie/top250" parameters:nil success:^(id  _Nonnull responseObject) {
        NSLog( @"success is ==%@" ,responseObject);
    } fail:^(NSError * _Nonnull error) {
        NSLog( @"fail is ==%@" ,error);
    }];
}


@end
