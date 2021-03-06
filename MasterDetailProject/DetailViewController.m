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
    
    NSMutableArray *constraintsMutArr = [NSMutableArray new];
    
    // Do any additional setup after loading the view.
    
    //UILabel *exerciseNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 80, 320, 20)];
    //exerciseNameLabel.text = self.exercise.name;
    //exerciseNameLabel.backgroundColor = [UIColor greenColor];
    //exerciseNameLabel.textAlignment = NSTextAlignmentCenter;
    //[exerciseNameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.title = self.exercise.name;
    //[self.view addSubview:exerciseNameLabel];
    
    UILabel *workWeightLabel = [[UILabel alloc] init];
    //workWeightLabel.text = @"Work Weight\n\n\n\n\n";
    workWeightLabel.text = @"Work Weight";
    workWeightLabel.lineBreakMode = NSLineBreakByClipping;
    workWeightLabel.textAlignment = NSTextAlignmentCenter;
    workWeightLabel.numberOfLines = 0;
    workWeightLabel.font = [UIFont systemFontOfSize:200];
    workWeightLabel.adjustsFontSizeToFitWidth = YES;
    workWeightLabel.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:workWeightLabel];
    [workWeightLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSLayoutConstraint *workWeightLabelXPosConstraint =
    [NSLayoutConstraint constraintWithItem:workWeightLabel
                                 attribute:NSLayoutAttributeLeadingMargin
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeadingMargin
                                multiplier:1.0
                                  constant:0.0];
    [constraintsMutArr addObject:workWeightLabelXPosConstraint];
    
    NSLayoutConstraint *workWeightLabelYPosConstraint =
    [NSLayoutConstraint constraintWithItem:workWeightLabel
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.topLayoutGuide
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:8.0];
    [constraintsMutArr addObject:workWeightLabelYPosConstraint];
    
    NSLayoutConstraint *workWeightLabelWidthConstraint =
    [NSLayoutConstraint constraintWithItem:workWeightLabel
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:0.5
                                  constant:0.0];
    [constraintsMutArr addObject:workWeightLabelWidthConstraint];
    
    NSLayoutConstraint *workWeightLabelHeightConstraint =
    [NSLayoutConstraint constraintWithItem:workWeightLabel
                                 attribute:NSLayoutAttributeHeight
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeHeight
                                multiplier:0.1
                                  constant:0.0];
    [constraintsMutArr addObject:workWeightLabelHeightConstraint];
    
    
    UITextField *weightAmountTextField = [[UITextField alloc] initWithFrame:CGRectMake(0,120,320,20)];
    weightAmountTextField.text = [NSString stringWithFormat:@"%d", self.exercise.weight];
    weightAmountTextField.backgroundColor = [UIColor whiteColor];
    weightAmountTextField.textAlignment = NSTextAlignmentCenter;
    //[weightAmountTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:weightAmountTextField];
    
    NSMutableArray *setTextFieldArray = [NSMutableArray new];
    for (int i=0; i<self.exercise.numSets; i++) {
        UITextField *setTextField = [[UITextField alloc] initWithFrame:CGRectMake(i*50.0,180,40,40)];
        setTextField.text = @"5";
        setTextField.backgroundColor = [UIColor whiteColor];
        setTextField.textAlignment = NSTextAlignmentCenter;
        [setTextFieldArray addObject:setTextField];
        //[setTextField setTranslatesAutoresizingMaskIntoConstraints:NO];
        [self.view addSubview:setTextField];
    }
    NSLog(@"setTextFieldArray count==%d", (int)[setTextFieldArray count]);
    
    /*NSLayoutConstraint *exerciseNameWidthConstraint =
    [NSLayoutConstraint constraintWithItem:exerciseNameLabel
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeWidth
                                multiplier:0.5
                                  constant:0.0];
     [constraintsMutArr addObject:exerciseNameWidthConstraint];

    NSLayoutConstraint *exerciseNameVerticalPositionConstraint =
    [NSLayoutConstraint constraintWithItem:exerciseNameLabel
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.topLayoutGuide
                                 attribute:NSLayoutAttributeBottom
                                multiplier:1.0
                                  constant:0.0];
    [constraintsMutArr addObject:exerciseNameVerticalPositionConstraint];
    
    NSLayoutConstraint *exerciseNameXPositionConstraint =
    [NSLayoutConstraint constraintWithItem:exerciseNameLabel
                                 attribute:NSLayoutAttributeCenterX
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeCenterX
                                multiplier:1.0
                                  constant:0.0];
    [constraintsMutArr addObject:exerciseNameXPositionConstraint];*/
    
    [self.view addConstraints:constraintsMutArr];
}

/*
 + (instancetype)constraintWithItem:(id)view1
 attribute:(NSLayoutAttribute)attr1
 relatedBy:(NSLayoutRelation)relation
 toItem:(id)view2
 attribute:(NSLayoutAttribute)attr2
 multiplier:(CGFloat)multiplier
 constant:(CGFloat)c
 Parameters
 view1
 The view for the left side of the constraint.
 attr1
 The attribute of the view for the left side of the constraint.
 relation
 The relationship between the left side of the constraint and the right side of the constraint.
 view2
 The view for the right side of the constraint.
 attr2
 The attribute of the view for the right side of the constraint.
 multiplier
 The constant multiplied with the attribute on the right side of the constraint as part of getting the modified attribute.
 c
 The constant added to the multiplied attribute value on the right side of the constraint to yield the final modified attribute.
*/

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
