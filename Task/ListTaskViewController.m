//
//  ListTaskViewController.m
//  Task
//
//  Created by ichrak on 19/12/13.
//  Copyright (c) 2013 ichrak. All rights reserved.
//

#import "ListTaskViewController.h"

@interface ListTaskViewController ()

@end

@implementation ListTaskViewController
@synthesize taskListTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     taskList = [[NSMutableArray alloc] init];
    taskListTableView.delegate = self;
    taskListTableView.dataSource = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)add:(id)sender {
    
    NewTaskViewController *viewController = [[NewTaskViewController alloc] initWithNibName:@"NewTaskViewController" bundle:[NSBundle mainBundle]];
    viewController.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    // Nous indiquons que la classe appelante est le delegate de la classe appelée
    viewController.delegate = self;
    
    [self presentViewController:viewController animated:YES completion:nil];
}
- (void)taskDidAdd:(NSString *)name
{
    // On ajoute la tâche dans la liste des tâches
    [taskList addObject:name];
    
    // Et on recharge le UITableView. Le tour est joué !
    [taskListTableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [taskList  count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    // Dequeue or create a cell of the appropriate type.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
    cell.textLabel.text = [taskList  objectAtIndex:indexPath.row];
    
    return cell;
}

@end
