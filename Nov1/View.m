//
//  View.m
//  Nov1
//
//  Created by Erica Lederman on 10/26/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//


#import <CoreLocation/CLLocation.h>	//for CLLocationCoordinate2D
#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
    }
	rt = 1;
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void) drawRect: (CGRect) rect
{
    // Drawing code
	//Italy
    static CLLocationCoordinate2D a[] = {
		{44.90010727606405, 12.350406787109364},
		{44.27417380325245, 12.350406787109364},
		{43.832010594587295, 13.031559130859364},
		{43.561944041072245, 13.602848193359364},
		{43.01816334834479, 13.888492724609364},
		{42.45331406000015, 14.284000537109364},
		{41.94872572983294, 15.118961474609364},
		{41.883324151299576, 16.129703662109364},
		{41.57175180399933, 15.909977099609364},
		{41.176028546627585, 16.700992724609364},
		{40.89426908857225, 17.382145068359364},
		{40.61130450829725, 17.997379443359364},
		{40.192994654401744, 18.502750537109364},
		{39.788974588867724, 18.326969287109364},
		{40.29362603602973, 17.843570849609364},
		{40.477728210043296, 17.118473193359364},
		{39.95760668954037, 16.635074755859364},
		{39.67068554246567, 16.591129443359364},
		{39.39954898361731, 17.096500537109364},
		{38.9566964037829, 17.074527880859364},
		{38.854103823467376, 16.700992724609364},
		{38.511058895301495, 16.547184130859364},
		{37.92411613112648, 16.041813037109364},
		{38.26995005604605, 15.580387255859364},
		{38.90541864561405, 16.261539599609364},
		{39.467432390718784, 15.909977099609364},
		{40.024943407324585, 15.492496630859364},
		{40.29362603602973, 14.899234912109364},
		{40.57793540935479, 14.613590380859364},
		{40.84442168307318, 14.064273974609364},
		{41.159487850824526, 13.536930224609364},
		{41.25866938332318, 13.075504443359364},
		{41.50596513957888, 12.636051318359364},
		{41.75231997305168, 12.240543505859364},
		{42.03038344124267, 11.823063037109364},
		{42.45331406000015, 11.273746630859364},
		{42.792841068356, 10.768375537109364},
		{43.03422627893153, 10.482731005859364},
		{43.46633606103495, 10.306949755859364},
		{44.148178340567455, 9.845523974609364},
		{44.431289062232786, 8.944645068359364}
	};
	static const size_t n = sizeof a / sizeof a[0];
	
	CGContextRef c = UIGraphicsGetCurrentContext();
	
	CGSize s = self.bounds.size;
	CGContextTranslateCTM(c, s.width / 2, s.height / 2);
	
	//Longitude and latitude in degrees of the heart of Manhattan,
	//probably somewhere around the Angel of the Waters.
	CGFloat xtranslate = -12;
	CGFloat ytranslate = -42;
	CGFloat scale = 30;//00;	//pixels per degree of latitude
    
	CGContextRotateCTM(c, 10 * rt * M_PI / 180);
	CGContextScaleCTM(c, scale * cos(ytranslate * M_PI / 180), -scale);
	CGContextTranslateCTM(c, xtranslate, ytranslate);
    
	CGContextBeginPath(c);
	//CGContextRotateCTM(c, 90 * M_PI / 180);
	CGContextMoveToPoint(c, a[0].longitude, a[0].latitude);
	
	for (size_t i = 1; i < n; ++i) {
		CGContextAddLineToPoint(c, a[i].longitude, a[i].latitude);
	}
	
	CGContextClosePath(c);
	CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, 0.5);	//opaque red
	CGContextFillPath(c);
	
	//Sicily
	static CLLocationCoordinate2D b[] = {
		{37.96012659864641, 13.748417041015614},
		{38.00342407495003, 14.198856494140614},
		{38.012080504387406, 14.396610400390614},
		{38.0812951370971, 14.583377978515614},
		{38.159083357970644, 14.912967822265614},
		{38.17635837367041, 15.187626025390614},
		{38.254045269337105, 15.396366259765614},
		{38.24541748798274, 15.517215869140614},
		{38.06399761378927, 15.473270556640614},
		{37.890797514404525, 15.330448291015614},
		{37.682418346175275, 15.198612353515614},
		{37.429843761192764, 15.077762744140614},
		{37.27264312053225, 15.176639697265614},
		{37.08882667896723, 15.286502978515614},
		{36.90456333267688, 15.165653369140614},
		{36.649371248607004, 15.165653369140614},
		{36.75507100629167, 14.660282275390614},
		{36.88699116443829, 14.396610400390614},
		{37.06253068630285, 14.121952197265614},
		{37.185167269481425, 13.726444384765614},
		{37.298866083063764, 13.418827197265614},
		{37.50832057840703, 13.166141650390614},
		{37.49088840598873, 13.034305712890614},
		{37.56930112660395, 12.902469775390614},
		{37.56930112660395, 12.704715869140614},
		{37.769314401945294, 12.430057666015614},
		{37.890797514404525, 12.452030322265614},
		{38.012080504387406, 12.495975634765614},
		{38.0812951370971, 12.616825244140614},
		{38.159083357970644, 12.759647509765614},
		{38.0466960001609, 12.924442431640614},
		{38.1158779103161, 13.067264697265614},
		{38.18499434621365, 13.188114306640614},
		{38.12452104622067, 13.374881884765614},
		{38.09858856947522, 13.528690478515614},
		{37.97744865468269, 13.792362353515614},
	};
	static const size_t n2 = sizeof b / sizeof b[0];
	
	//CGContextRef c = UIGraphicsGetCurrentContext();
	
	//CGSize s2 = self.bounds.size;
	//CGContextTranslateCTM(c, s2.width / 2, s2.height / 2);
	
	/*
	//Longitude and latitude in degrees of the heart of Manhattan,
	//probably somewhere around the Angel of the Waters.
	CGFloat xtranslate2 = -14;
	CGFloat ytranslate2 = -37;
	CGFloat scale2 = 20;//00;	//pixels per degree of latitude
    //37.604124758481376, 14.078006884765614
	CGContextScaleCTM(c, scale2 * cos(ytranslate2 * M_PI / 180), -scale2);
	CGContextTranslateCTM(c, xtranslate2, ytranslate2);
    */
	CGContextBeginPath(c);
	CGContextMoveToPoint(c, b[0].longitude, b[0].latitude);
	
	for (size_t i = 1; i < n2; ++i) {
		CGContextAddLineToPoint(c, b[i].longitude, b[i].latitude);
	}
	
	CGContextClosePath(c);
	CGContextSetRGBFillColor(c, 1.0, 0.0, 1.0, 0.5);	//opaque red
	CGContextFillPath(c);
	
	rt *= 1.1;
	if (rt <= 10){
		[self performSelector: @selector(setNeedsDisplay) withObject: nil afterDelay: 0.05];
	}
}

@end
