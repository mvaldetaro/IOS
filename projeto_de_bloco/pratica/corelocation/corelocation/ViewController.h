//
//  ViewController.h
//  corelocation
//
//  Created by Magno Valdetaro on 5/3/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

@property CLLocationCoordinate2D coordinate;
@property CLLocationDistance altitude;
@property CLLocationAccuracy horizontalAccuracy;
@property CLLocationAccuracy verticalAccuracy;

@property CLLocationDirection course;
@property CLLocationSpeed speed;
@property NSDate* timestamp;

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (nonatomic, strong) CLLocationManager *locationManager;

@property (weak, nonatomic) IBOutlet UILabel *lat;
@property (weak, nonatomic) IBOutlet UILabel *lot;
@property (weak, nonatomic) IBOutlet UILabel *alt;
@property (weak, nonatomic) IBOutlet UILabel *accuH;
@property (weak, nonatomic) IBOutlet UILabel *accuV;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *spe;

//-(CLLocationDistance)distanceFromLocation:(CLLocation *)location;

- (IBAction)btnStart:(id)sender;

- (IBAction)btnStop:(id)sender;

@end

