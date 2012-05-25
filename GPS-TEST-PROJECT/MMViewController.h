//
//  MMViewController.h
//  GPS-TEST-PROJECT
//
//  Created by MARC MONTEYS on 25/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MMViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *mapview;
- (IBAction)func:(id)sender;
@property (strong, nonatomic) IBOutlet CLLocationManager *LocationManager;

@end
