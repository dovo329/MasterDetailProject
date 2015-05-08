//
//  Exercise.h
//  MasterDetailProject
//
//  Created by Douglas Voss on 5/8/15.
//  Copyright (c) 2015 Doug. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Exercise : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int numSets;
@property (nonatomic) int weight;

-(id)Exercise;

@end
