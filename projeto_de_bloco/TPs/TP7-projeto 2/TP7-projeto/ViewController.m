//
//  ViewController.m
//  TP7-projeto
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
    
    // Localização do Usuario
    
    self.locationManager = [CLLocationManager new];
    if ([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    [self.locationManager startUpdatingLocation];
    
    self.mapView.showsUserLocation = YES;
    self.mapView.showsBuildings = YES;
    
    //Annotations
    
    [self annotations];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation {
    MKMapCamera *camera = [MKMapCamera cameraLookingAtCenterCoordinate:userLocation.coordinate fromEyeCoordinate:CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude) eyeAltitude:2000];
    [mapView setCamera:camera animated:YES];
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 500, 500);
    [self.mapView setRegion:region animated:YES];
}


// Direciona para o Centro do Rio

- (IBAction)btnGotoCentro:(id)sender {
    self.latitude = -22.9053373;
    self.longitude = -43.1956281;
    [self goToMap];
    
}

// Direciona para Ipanema

- (IBAction)btnGotoIpanema:(id)sender {
    self.latitude = -22.9844348;
    self.longitude = -43.2195135;
    [self goToMap];
}

// Troca a visualizacao

- (IBAction)UISegmentControl:(id)sender {
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

// Metodo para apontar a coordenada no mapa

- (void)goToMap {
    CLLocationCoordinate2D location;
    
    location.latitude = self.latitude;
    location.longitude = self.longitude;
    
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, 3000, 3000);
    
    [_mapView setRegion: region animated:YES];
}

// Annotations

- (void)annotations {
    NSDictionary *teatroMunicipal = @{
        @"latitude": @"-22.9090478",
        @"longitude": @"-43.1766975",
        @"title": @"Teatro Municipal do Rio de Janeiro",
        @"subtitle": @"Ponto turístico e de grandes espetáculos.",
    };
    
    NSDictionary *ccbb = @{
        @"latitude": @"-22.9010248",
        @"longitude": @"-43.1763011",
        @"title": @"Centro Cultural Banco do Brasil",
        @"subtitle": @"Espaço apra a cultura e o lazer.",
    };
    
    NSDictionary *candelaria = @{
        @"latitude": @"-22.9007467",
        @"longitude": @"-43.177934",
        @"title": @"Igreja de Nossa Senhora da Candelária",
        @"subtitle": @"É um dos principais monumentos religiosos da cidade, tradicional palco de casamentos da sociedade carioca.",
    };
    
    NSDictionary *metropolitana = @{
        @"latitude": @"-22.9107778",
        @"longitude": @"-43.1806755",
        @"title": @"Catedral Metropolitana de São Sebastião do Rio de Janeiro",
        @"subtitle": @"Catedral católica localizada no Centro da cidade do Rio de Janeiro",
    };
    
    NSDictionary *amanha = @{
        @"latitude": @"-22.8952616",
        @"longitude": @"-43.1799497",
        @"title": @"Museu do Amanhã",
        @"subtitle": @"O prédio, projeto do arquiteto espanhol Santiago Calatrava, foi erguido ao lado da Praça Mauá, na zona portuária",
    };
    
    NSMutableArray *places = [NSMutableArray arrayWithObjects: teatroMunicipal, ccbb, candelaria, metropolitana, amanha, nil];
    
    for (int i = 0; i < places.count; ++i) {
        
        double latitude = [[places[i] objectForKey:@"latitude"] doubleValue];
        double longitude = [[places[i] objectForKey:@"longitude"] doubleValue];
        NSString *title = [places[i] objectForKey:@"title"];
        NSString *subtitle = [places[i] objectForKey:@"subtitle"];
        //NSLog(@"%@", latitude);
        
        MKPointAnnotation *annotation = [MKPointAnnotation new];
        annotation.coordinate = CLLocationCoordinate2DMake(latitude , longitude);
        annotation.title = title;
        annotation.subtitle = subtitle;
        
        [self.mapView addAnnotation:annotation];
        
    }
    
    //NSLog(@"%lu", places.count);
    
    //NSLog(@"%@", places);
}

@end
