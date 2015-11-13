//
//  FISViewController.m
//  pour-cast
//
//  Created by Joe Burgess on 11/19/14.
//  Copyright (c) 2014 The Flatiron School. All rights reserved.
//

#import "FISViewController.h"
#import "ForcastAPIClient.h"
#import "FISDailyForecast.h"

#import "FISDayxibView.h"
#import "FISDayclass.h"


@interface FISViewController ()
@property (weak, nonatomic) IBOutlet UILabel *dayOneName;
@property (weak, nonatomic) IBOutlet UILabel *dayOneHighTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayOneLowTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayTwoName;
@property (weak, nonatomic) IBOutlet UILabel *dayTwoHighTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayTwoLowTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayThreeName;
@property (weak, nonatomic) IBOutlet UILabel *dayThreeHighTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayThreeLowTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayFourName;
@property (weak, nonatomic) IBOutlet UILabel *dayFourHighTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayFourLowTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayFiveName;
@property (weak, nonatomic) IBOutlet UILabel *dayFiveHighTemp;
@property (weak, nonatomic) IBOutlet UILabel *dayFiveLowTemp;




@property (weak, nonatomic) IBOutlet FISDayxibView *xibDayView;
@property (weak, nonatomic) IBOutlet FISDayxibView *xibDayView2;
@property (weak, nonatomic) IBOutlet FISDayxibView *xibDayView3;



@end

@implementation FISViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self testDay];

    [ForcastAPIClient getForecastForCoordinate:CLLocationCoordinate2DMake(37.8267, -122.423) Completion:^(NSArray *dailyForecastModels) {
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"MM/dd"];
        

        FISDailyForecast *day = dailyForecastModels[1];
        NSString *maxTemp = [NSString stringWithFormat:@"High: %.1fF", day.temperatureMax];
        NSString *minTemp = [NSString stringWithFormat:@"Low: %.1fF", day.temperatureMin];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.dayOneHighTemp.text = maxTemp;
            self.dayOneLowTemp.text = minTemp;
            self.dayOneName.text = [format stringFromDate:day.date];
            
            FISDayclass * dayTest2 = [[FISDayclass alloc]initWithName:[format stringFromDate:day.date] highTemp:maxTemp lowTemp:minTemp];
            self.xibDayView.day = dayTest2;
        }];

        day = dailyForecastModels[2];
        maxTemp = [NSString stringWithFormat:@"High: %.1fF", day.temperatureMax];
        minTemp = [NSString stringWithFormat:@"Low: %.1fF", day.temperatureMin];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.dayTwoHighTemp.text = maxTemp;
            self.dayTwoLowTemp.text = minTemp;
            self.dayTwoName.text = [format stringFromDate:day.date];
            
            FISDayclass * dayTest = [[FISDayclass alloc]initWithName:[format stringFromDate:day.date] highTemp:maxTemp lowTemp:minTemp];
            self.xibDayView2.day = dayTest;
        }];

        day = dailyForecastModels[3];
        maxTemp = [NSString stringWithFormat:@"High: %.1fF", day.temperatureMax];
        minTemp = [NSString stringWithFormat:@"Low: %.1fF", day.temperatureMin];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.dayThreeHighTemp.text = maxTemp;
            self.dayThreeLowTemp.text = minTemp;
            self.dayThreeName.text = [format stringFromDate:day.date];
            
            
            FISDayclass * dayTest = [[FISDayclass alloc]initWithName:[format stringFromDate:day.date] highTemp:maxTemp lowTemp:minTemp];
            self.xibDayView3.day = dayTest;
        }];

        day = dailyForecastModels[4];
        maxTemp = [NSString stringWithFormat:@"High: %.1fF", day.temperatureMax];
        minTemp = [NSString stringWithFormat:@"Low: %.1fF", day.temperatureMin];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.dayFourHighTemp.text = maxTemp;
            self.dayFourLowTemp.text = minTemp;
            self.dayFourName.text = [format stringFromDate:day.date];
        }];

        day = dailyForecastModels[5];
        maxTemp = [NSString stringWithFormat:@"High: %.1fF", day.temperatureMax];
        minTemp = [NSString stringWithFormat:@"Low: %.1fF", day.temperatureMin];
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.dayFiveHighTemp.text = maxTemp;
            self.dayFiveLowTemp.text = minTemp;
            self.dayFiveName.text = [format stringFromDate:day.date];
        }];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)testDay{
    FISDayclass * dayTest = [FISDayclass new];
    dayTest.name = @"guang";
    dayTest.highTemp = @"111";
    dayTest.lowTemp = @"222";
    self.xibDayView2.day = dayTest;
    NSLog(@"xibDayView %@",self.xibDayView.day);
    
    FISDayclass * dayTest2 = [[FISDayclass alloc]initWithName:@"hello" highTemp:@"111" lowTemp:@"4444"];
    
    //FISDayclass * dayTest = [FISDayclass alloc] initwithName:<#(NSString *)#> highTemp:<#(NSString *)#> lowTemp:];
    self.xibDayView2.day = dayTest2;
}


@end
