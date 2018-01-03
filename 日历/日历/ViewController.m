//
//  ViewController.m
//  日历
//
//  Created by 曹相召 on 2017/12/25.
//  Copyright © 2017年 MOKO. All rights reserved.
//

#import "ViewController.h"
#import <EventKit/EventKit.h>
#import "CalendarReminderManager.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
//    [CalendarReminderManager fatchEventsWithStartDate:[NSDate dateWithTimeIntervalSinceNow:-1000] endDate:[NSDate dateWithTimeIntervalSinceNow:1000]];
    
    //向日历添加事件
    EKAlarm *alarm = [EKAlarm alarmWithRelativeOffset:10.0f * 1.0f * 1];//多少事件之后提醒(10秒后)
    NSDate *startDate = [NSDate date];//事件开始时间
    NSDate *endDate = [NSDate dateWithTimeIntervalSinceNow:1000];//事件结束时间
    
//    [CalendarReminderManager addEventWithTitle:@"事件的标题" notes:@"事件的备注信息" location:@"事件的位置" startDate:startDate endDate:endDate alarms:@[alarm] URL:[NSURL URLWithString:@"http://www.jianshu.com/u/23a4aad7b6b6"] availability:EKEventAvailabilityFree successBlock:^(NSString *eventIdentifier) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"保存成功" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
//    } failBlock:^(NSError *error) {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"保存失败" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
//        [alert show];
//    }];
    
//    [CalendarReminderManager ];
    [CalendarReminderManager addEventIntoReminderWithTitle:@"提醒的标题" notes:@"提醒备注" startDate:startDate endDate:endDate alarm:alarm priority:4 completed:NO successBlock:^(NSString *eventIdentifier) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"保存成功" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
    } failBlock:^(NSError *error) {
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
