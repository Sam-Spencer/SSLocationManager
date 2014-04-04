//
//  CLLocationManager+SSLocation.h
//  SSLocationManager
//
//  Created by Sam Spencer on 4/4/14.
//  Copyright (c) 2014 Sam Spencer. All rights reserved.
//

@import Foundation;
@import CoreLocation;

/// Manage location services and retrieve location information
@interface CLLocationManager (SSLocation)

/// Get the authorization state of the location services. May return four different values, as defined by \p CLAuthorizationStatus.
- (CLAuthorizationStatus)locationAuthorizationStatus;

/// If the user has not yet made a decision about location services, a prompt will be displayed.
- (BOOL)promptForLocationServicesAccess;

/// Retrieve the user's current location with one asynchronous call. This method may not return immediately.
- (CLLocation *)currentLocation;

/// Retrieve the user's current heading with one asynchronous call. This method may not return immediately.
- (CLHeading *)currentHeading;

@end
