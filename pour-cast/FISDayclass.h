//
//  FISDayclass.h
//  pour-cast
//
//  Created by Guang on 11/12/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISDayclass : NSObject

@property (nonatomic, strong)NSString * name;
@property (nonatomic, strong)NSString * highTemp;
@property (nonatomic, strong)NSString * lowTemp;


-(instancetype)initWithName:(NSString *)name
                   highTemp:(NSString *)highTemp
                    lowTemp:(NSString *)lowTemp;

@end
