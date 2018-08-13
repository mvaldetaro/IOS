//
//  ViewController.h
//  tp8-projeto
//
//  Created by Magno Valdetaro on 5/2/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController <MKMapViewDelegate, CLLocationManagerDelegate>

- (IBAction)btnStart:(id)sender;
- (IBAction)btnStop:(id)sender;
- (IBAction)btnShowMap:(id)sender;

//@property (weak, nonatomic) IBOutlet UILabel *lbEndereco;
@property (weak, nonatomic) IBOutlet UITextView *textViewEndereco;
@property (weak, nonatomic) IBOutlet MKMapView *map;

@property CLLocationCoordinate2D coordinate;

@property (nonatomic, strong) CLLocationManager *locationManager;


@end

