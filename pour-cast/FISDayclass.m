//
//  FISDayclass.m
//  pour-cast
//
//  Created by Guang on 11/12/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISDayclass.h"

@implementation FISDayclass


//-(instancetype)init{
//    self = [super init];
//    return  self;
//
//}

/*
 NOTE : Hello !!!! _name = name ; You had _name = self.name ! of course . self name = self name . not passing any value.
 */

-(instancetype)initWithName:(NSString *)name
                    highTemp:(NSString *)highTemp
                    lowTemp:(NSString *)lowTemp
{
    self = [super init];
    if (self) {
        _name = name;
        _highTemp = highTemp;
        _lowTemp = lowTemp;
    }
    return self;
}

@end
