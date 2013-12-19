//
//  NewTaskViewController.h
//  Task
//
//  Created by ichrak on 19/12/13.
//  Copyright (c) 2013 ichrak. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol AddTaskDelegate;
@interface NewTaskViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextField *taskTextField;
@property (nonatomic,assign)id <AddTaskDelegate> delegate;
- (IBAction)addTask:(id)sender;

@end


@protocol AddTaskDelegate <NSObject>

- (void)taskDidAdd:(NSString *)task;

@end