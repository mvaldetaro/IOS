//
//  ViewController.m
//  MapInfnet
//
//  Created by Magno Valdetaro on 4/21/16.
//  Copyright © 2016 infnet. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <MKMapViewDelegate>



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.locationManager = [CLLocationManager new];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    [self.locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    self.mapView.showsBuildings = YES;
    
    MKPointAnnotation *annotation = [MKPointAnnotation new];
    annotation.coordinate = CLLocationCoordinate2DMake(-22.9093099, -43.1769559);
    annotation.title = @"Teatro Municipal do Rio de Janeiro";
    annotation.subtitle = @"Ponto turístico e de grandes espetáculos";
    
    [self.mapView addAnnotation:annotation];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:2000];
    [mapView setCamera:camera animated:YES];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 500, 500);
    [self.mapView setRegion:region animated:YES];
}

- (IBAction)goToRio:(id)sender {
    CLLocationCoordinate2D location;
    location.latitude = -22.9088923;
    location.longitude = -43.1771377;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 2000, 2000);
    
    [_mapView setRegion: region animated:YES];
}

- (IBAction)btnChangeMapType:(id)sender {
    UISegmentedControl *control = sender;
    NSInteger index = [control selectedSegmentIndex];
    
    if (index == 0) {
        [_mapView setMapType:MKMapTypeStandard];
    } else if(index == 1) {
        [_mapView setMapType:MKMapTypeSatellite];
    } else {
        [_mapView setMapType:MKMapTypeHybrid];
    }
}

- (IBAction)btnInfnet:(id)sender {
    
    CLLocationCoordinate2D location;
    location.latitude = -22.9064667;
    location.longitude = -43.1769889;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 300, 300);
    
    MKPointAnnotation *annotation = [MKPointAnnotation new];
    annotation.coordinate = CLLocationCoordinate2DMake(location.latitude ,location.longitude);
    annotation.title = @"Instituto Infnet";
    annotation.subtitle = @"Faculdade";
    
    [_mapView setRegion: region animated:YES];
    [_mapView addAnnotation:annotation];

    
}
@end
