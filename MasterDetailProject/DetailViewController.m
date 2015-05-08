//
//  DetailViewController.m
//  MasterDetailProject
//
//  Created by Douglas Voss on 5/8/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *exerciseNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 320, 20)];
    exerciseNameLabel.text = self.exercise.name;
    [self.view addSubview:exerciseNameLabel];
    
    UITextField *weightAmountTextField = [[UITextField alloc] initWithFrame:CGRectMake(0,120,320,20)];
    weightAmountTextField.text = [NSString stringWithFormat:@"%d", self.exercise.weight];
    [self.view addSubview:weightAmountTextField];
    
    NSMutableArray *setTextFieldArray = [NSMutableArray new];
    for (int i=0; i<self.exercise.numSets; i++) {
        UITextField *setTextField = [[UITextField alloc] initWithFrame:CGRectMake(i*50.0,180,40,40)];
        setTextField.text = @"5";
        [setTextFieldArray addObject:setTextField];
        [self.view addSubview:setTextField];
    }
    NSLog(@"setTextFieldArray count==%d", [setTextFieldArray count]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
