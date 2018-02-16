//
//  main.m
//  FoodTruck
//
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "TruckDriver.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        // set truckA and truckB's delegate to your new instance.
      
      Cook *cookA = [[Cook alloc] init];
      truckA.delegate = cookA;
      double result = [truckA.delegate foodTruck:truckA priceForFood:@"1"];
      NSLog(@"%.2f", result);
      
      [truckA serve:10];
      
      
      TruckDriver *truckDriverB = [[TruckDriver alloc] init];
      truckB.delegate = truckDriverB;
      double result2 = [truckB.delegate foodTruck:truckB priceForFood:@"2"];
      NSLog(@"%.2f", result2);
      
      [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
