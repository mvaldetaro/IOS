//
//  ViewController.m
//  tp8-projeto
//
//  Created by Magno Valdetaro on 5/2/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <MKMapViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBestForNavigation;
    self.locationManager.distanceFilter = 10;
    
    self.map.showsBuildings = YES;
    self.map.showsUserLocation = YES;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnStart:(id)sender {
    [self.locationManager startUpdatingLocation];
}

- (IBAction)btnStop:(id)sender {
    [self.locationManager stopUpdatingLocation];
}

- (IBAction)btnShowMap:(id)sender {
    //Geocodificacao
    CLGeocoder *geocoder = [[CLGeocoder alloc] init];
    [geocoder geocodeAddressString:self.textViewEndereco.text completionHandler:^(NSArray *placemarks, NSError *error){
        if (error) {
            NSLog(@"Geocode falhou erro: %@", error);
        } else if(placemarks && placemarks.count > 0) {
            CLPlacemark *placemark = placemarks[0];
            CLLocation *location = placemark.location;
            CLLocationCoordinate2D coords = location.coordinate;
            
            MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coords, 100, 100);
            [_map setRegion: region animated:YES];
        }
    }];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *location = locations.lastObject;
    NSLog(@"%@", location.description);
}

// Se ocorrer um erro ao obter a localização
-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    NSLog(@"Erro ao obter localização, ative a Simulação de Localização! %@ ", [error description]);
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:2000];
    [mapView setCamera:camera animated:YES];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 500, 500);
    [self.map setRegion:region animated:YES];
}

@end
