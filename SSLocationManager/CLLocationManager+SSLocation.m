//
//  CLLocationManager+SSLocation.m
//  SSLocationManager
//
//  Created by Sam Spencer on 4/4/14.
//  Copyright (c) 2014 Sam Spencer. All rights reserved.
//

#import "CLLocationManager+SSLocation.h"

@implementation CLLocationManager (SSLocation)

- (CLAuthorizationStatus)locationAuthorizationStatus {
    return [CLLocationManager authorizationStatus];
}

- (BOOL)promptForLocationServicesAccess {
    if ([self locationAuthorizationStatus] == kCLAuthorizationStatusNotDetermined) {
        [self startUpdatingLocation];
        [self stopUpdatingLocation];
        return YES;
    } else return NO;
}

- (CLLocation *)currentLocation {
    NSLog(@"Coming Soon...");
    return nil;
}

- (CLHeading *)currentHeading {
    NSLog(@"Coming Soon...");
    return nil;
}

@end
