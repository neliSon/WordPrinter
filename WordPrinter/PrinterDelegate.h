//
//  PrinterDelegate.h
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Printer;

/*
 STEP A: CREATE A PROTOCOL.
 */

@protocol PrinterDelegate <NSObject>

-(int)printer:(Printer *)printer numberOfTimesToPrint:(NSString *) text;
-(BOOL)printer:(Printer *)printer shouldAddStarTo:(NSString *) text;

@optional



@end
