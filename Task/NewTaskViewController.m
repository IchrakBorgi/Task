//
//  NewTaskViewController.m
//  Task
//
//  Created by ichrak on 19/12/13.
//  Copyright (c) 2013 ichrak. All rights reserved.
//

#import "NewTaskViewController.h"

@interface NewTaskViewController ()

@end

@implementation NewTaskViewController
@synthesize delegate,taskTextField;

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTask:(id)sender {
    
    if ([taskTextField.text isEqualToString:@""])
        return;
    
    // On vérifie que la méthode du protocol est bien implémentée dans l'objet delegate (ici ListTaskViewController)
    if ([delegate respondsToSelector:@selector(taskDidAdd:)]) {
        // La méthode est appelée avec le nom de la tâche en paramètre
        [delegate taskDidAdd:taskTextField.text];
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
@end
