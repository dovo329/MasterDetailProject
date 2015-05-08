//
//  ExerciseSettings.m
//  MasterDetailProject
//
//  Created by Douglas Voss on 5/8/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import "ExerciseSettings.h"
#import "Exercise.h"

@implementation ExerciseSettings

+(ExerciseSettings *)sharedInstance
{
    static ExerciseSettings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ExerciseSettings alloc] init];
    });
    return sharedInstance;
}

-(id)init
{
    self.exerciseObjects = [[NSMutableArray alloc] init];
    
    Exercise *exercise1 = [[Exercise alloc] init];
    exercise1.name = @"Squat";
    exercise1.numSets = 3;
    exercise1.weight = 275;
    [self.exerciseObjects addObject:exercise1];
    
    Exercise *exercise2 = [[Exercise alloc] init];
    exercise2.name = @"Deadlift";
    exercise2.numSets = 1;
    exercise2.weight = 315;
    [self.exerciseObjects addObject:exercise2];
    
    return self;
}

-(int)count {
    return (int)([self.exerciseObjects count]);
}

@end
