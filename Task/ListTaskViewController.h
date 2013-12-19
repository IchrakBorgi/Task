//
//  ListTaskViewController.h
//  Task
//
//  Created by ichrak on 19/12/13.
//  Copyright (c) 2013 ichrak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewTaskViewController.h"

@interface ListTaskViewController : UIViewController<UITableViewDelegate,UITableViewDataSource,AddTaskDelegate>{
    
    NSMutableArray *taskList;
   
}

@property (weak, nonatomic) IBOutlet UITableView *taskListTableView;
- (IBAction)add:(id)sender;
@end
