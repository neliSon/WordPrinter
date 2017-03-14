//
//  Controller.h
//  WordPrinter
//
//  Created by Nelson Chow on 2017-03-13.
//  Copyright © 2017 Nelson Chow. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PrinterDelegate.h"

/*
 STEP D: ADOPT THE PROTOCOL IN THE DEFINITION OF THE CLASS YOU'VE CREATED.
 */

@interface Controller : NSObject <PrinterDelegate>	

@end
