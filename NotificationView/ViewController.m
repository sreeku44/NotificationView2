//
//  ViewController.m
//  NotificationView
//
//  Created by Sreekala Santhakumari on 2/10/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.notificationView  = [[UIView alloc]init];
    
    self.notificationView.frame = CGRectMake(0, 0, 414.2, 735.8);
    
    self.notificationView.backgroundColor = [UIColor colorWithRed:190.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
    
    [self.view addSubview:self.notificationView];
    
    
    
    UILabel *notificationLabel = [[UILabel alloc]init];
    
    notificationLabel.frame = CGRectMake(135, 650, 150, 50);
    
    notificationLabel.text = @" Notification View ";
    
    [self.notificationView addSubview:notificationLabel];
    
    
    UISwipeGestureRecognizer *swipeUpGestureRecognizer = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUP: ) ];
    
    [self.notificationView addGestureRecognizer:swipeUpGestureRecognizer];
    
    swipeUpGestureRecognizer.direction = UISwipeGestureRecognizerDirectionUp;
    
    UISwipeGestureRecognizer *swipeDownGestureRecognizer =[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDownGestureRecognizer];
   // [self.notificationView addGestureRecognizer:swipeDownGestureRecognizer];
    
}

-(void) swipeUP: (UISwipeGestureRecognizer*) notificationUP {
    
 self.notificationView =  notificationUP.view;
    
    [UIView animateWithDuration:5.0 animations:^{
        self.notificationView.frame = CGRectMake (0,-738.8,414.2,738.8); }];

}

-(void) swipeDown: (UISwipeGestureRecognizer*) notificationDown{
    
   // self.notificationView = notificationDown.view;
    
    self.view = notificationDown.view;
    
        [UIView animateWithDuration:5.0 animations:^{
            self.notificationView.frame = CGRectMake (0,0,414.2,738.8); }];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
