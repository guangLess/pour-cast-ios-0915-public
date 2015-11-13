//
//  FISDayxibVew.m
//  pour-cast
//
//  Created by Guang on 11/12/15.
//  Copyright © 2015 The Flatiron School. All rights reserved.
//

#import "FISDayxibView.h"

#import "FISDayxibView.h"
#import "FISDayclass.h"


@interface FISDayxibView ()

@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *highTemp;
@property (weak, nonatomic) IBOutlet UILabel *lowTemp;



@end


@implementation FISDayxibView


-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if(self) {
        NSLog(@"initWithFrame: is getting called.");
        [self commonInit];
    }
    
    return self;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if(self) {
        
        NSLog(@"initWithCoder: is getting called.");
        [self commonInit];
    }
    
    return self;
}

-(void)commonInit
{
   // [[NSBundle mainBundle] loadNibNamed:@"FISDayxibView" owner:self options:nil];
    //[UINib nibWithNibName:@"FISDayxibView" bundle:nil];
    
    
//    NSString *className = NSStringFromClass([self class]);
    [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil];
    [self addSubview:self.contentView];
    
}

-(void)setDay:(FISDayclass *)day{
    // I do not remeber this ...
    _day = day;
    [self updateDay];
    
}

-(void)updateDay{
    self.name.text = self.day.name;
    self.highTemp.text = self.day.highTemp;
    self.lowTemp.text = self.day.lowTemp;
}


@end


