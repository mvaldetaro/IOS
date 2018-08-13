//
//  ViewController.h
//  MapInfnet
//
//  Created by Magno Valdetaro on 4/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController

- (IBAction)goToRio:(id)sender;
- (IBAction)btnChangeMapType:(id)sender;
- (IBAction)btnInfnet:(id)sender;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

