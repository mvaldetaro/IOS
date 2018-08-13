//
//  ViewController.m
//  corelocation
//
//  Created by Magno Valdetaro on 5/3/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    
    [self.locationManager requestWhenInUseAuthorization];
    
    //Aqui definimmos a precisão
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    
    // distanceFilter: distância mínima horizintal (em metros) para updates de localização
    // kCLDistanceFilterNone: notifica sobre todos os movimentos
    self.locationManager.distanceFilter = 10;
    
    //[self.locationManager startUpdatingLocation];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*-(CLLocationDistance)distanceFromLocation:(CLLocation *)location {
    return 0;
}*/

- (IBAction)btnStart:(id)sender {
    [self.locationManager startUpdatingLocation];
}

- (IBAction)btnStop:(id)sender {
    [self.locationManager stopUpdatingLocation];
}


//localização do usuário em ordem cronológica
-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *location = locations.lastObject;
    
    
    self.lat.text = [NSString stringWithFormat:@"%f", location.coordinate.latitude];
    self.lot.text = [NSString stringWithFormat:@"%f", location.coordinate.longitude];
    self.alt.text = [NSString stringWithFormat:@"%f", location.altitude];
    self.accuH.text = [NSString stringWithFormat:@"%f", location.horizontalAccuracy];
    self.accuV.text = [NSString stringWithFormat:@"%f", location.verticalAccuracy];
    self.time.text = [NSString stringWithFormat:@"%@", location.timestamp];
    self.spe.text = [NSString stringWithFormat:@"%f", location.speed];
    
    //Geocodificacao reversa
    
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    CLLocation *newLocation = [[CLLocation alloc] initWithLatitude:location.coordinate.latitude longitude:location.coordinate.longitude];
    
    [geocoder reverseGeocodeLocation:newLocation completionHandler:^(NSArray *placemarks, NSError *error){
        if (error) {
            NSLog(@"Geocode failed with error: %@", error);
        } else if (placemarks && placemarks.count > 0) {
            CLPlacemark *placemark = placemarks[0];
            
            NSString *address = placemark.thoroughfare;
            NSString *city = placemark.locality;
            NSString *state = placemark.administrativeArea;
            NSString *zip = placemark.postalCode;
            
            NSLog(@"%@ %@ %@ %@", address, city, state, zip);
        }
    }];
    
    NSLog(@"%@", location.description);

}

//Se ocorrer um erro ao obter a localização
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Erro ao obter localização %@ ", [error description]);
}




@end
