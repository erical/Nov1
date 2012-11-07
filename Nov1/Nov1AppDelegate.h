//
//  Nov1AppDelegate.h
//  Nov1
//
//  Created by Erica Lederman on 10/26/12.
//  Copyright (c) 2012 Erica Lederman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface Nov1AppDelegate: UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;
@end