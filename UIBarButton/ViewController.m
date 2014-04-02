//
//  ViewController.m
//  UIBarButton
//
//  Created by Jose Antonio Gabriel Massana on 02/04/14.
//  Copyright (c) 2014 GabrielMassana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *myBarButtonItem;

@property (strong, nonatomic) IBOutlet UITextField *myTextFieldOne;
@property (strong, nonatomic) IBOutlet UITextField *myTextFieldTwo;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //self.myTextFieldOne.delegate = self;
    //self.myTextFieldTwo.delegate = self;
    
    self.myBarButtonItem.enabled = FALSE;
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(checkTextFields) name:UITextFieldTextDidChangeNotification object:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)myBarButtonItemAction:(id)sender
{
    
}

- (void) checkTextFields
{
    // Add here your logic to check TextFields and decide if they have text
    if ([self.myTextFieldOne.text length] != 0 && [self.myTextFieldTwo.text length] != 0 )
    {
        self.myBarButtonItem.enabled = TRUE;
    }
    else
    {
        self.myBarButtonItem.enabled = FALSE;
    }
}

@end
