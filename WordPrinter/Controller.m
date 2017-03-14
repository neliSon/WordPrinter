//
//  Controller.m
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import "Controller.h"

@implementation Controller

/*
 STEP E: IMPLEMENT HOW YOUR DELEGATE RESPONDS TO THE METHODS IN THE PROTOCOL.
 */

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *)text {
    
    if ([text hasPrefix:@"A"]) {
        return 2;
    } else if ([text hasPrefix:@"?"]) {
        return 0;
    } else {
        return 1;
    }
}

-(BOOL)printer:(Printer *)printer shouldAddStarTo:(NSString *)text {
    if ([text hasPrefix:@"H"]) {
        return YES;
    } else {
        return NO;
    }
}

@end
