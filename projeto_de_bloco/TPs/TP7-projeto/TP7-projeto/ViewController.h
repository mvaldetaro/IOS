//
//  ViewController.h
//  TP7-projeto
//
//  Created by Magno Valdetaro on 4/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property(assign) double latitude;
@property(assign) double longitude;
@property (strong, nonatomic) CLLocationManager *locationManager;


- (IBAction)UISegmentControl:(id)sender;
- (IBAction)btnGotoCentro:(id)sender;
- (IBAction)btnGotoIpanema:(id)sender;
- (void)goToMap;
- (void)annotations;

@end

