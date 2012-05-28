//
//  MMViewController.m
//  GPS-TEST-PROJECT
//
//  Created by MARC MONTEYS on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

@implementation MMViewController
@synthesize LocationManager;
@synthesize mapview;

- (void)viewDidLoad
{
    [super viewDidLoad];
    LocationManager = [[CLLocationManager alloc] init];
    LocationManager.distanceFilter = kCLDistanceFilterNone;
    LocationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    [LocationManager startUpdatingLocation];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMapview:nil];
    [self setLocationManager:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)func:(id)sender {
    
    [mapview setMapType:MKMapTypeStandard];
    [mapview setZoomEnabled:YES];
    [mapview setScrollEnabled:YES];
    MKCoordinateRegion region = { {0.0, 0.0}, {0.0, 0.0} };
    region.center.latitude = LocationManager.location.coordinate.latitude;
    region.center.longitude = LocationManager.location.coordinate.longitude;
    region.span.latitudeDelta = 0.007f;
    region.span.longitudeDelta = 0.007f;
    [mapview setRegion:region animated:YES];
}
@end
