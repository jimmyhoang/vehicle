//
//  Car.m
//  Vehicles
//
//  Created by Jimmy Hoang on 2017-06-04.
//  Copyright © 2017 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.numberOfWheels = 4;
    }
    return self;
}

-(NSString*) start {
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}

- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
}

- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}

- (NSString *)makeNoise
{
    return @"Beep beep!";
}
@end
