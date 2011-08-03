//
//  PDFAppDelegate.m
//  PDF
//
//  Created by Masashi Ono on 09/10/06.
//  Copyright Masashi Ono 2009. All rights reserved.
//

#import "PDFAppDelegate.h"
#import "PDFViewController.h"

#import "hpdf.h"

@implementation PDFAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application
{    
    
	if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)   
	{
		self.viewController = [[[PDFViewController alloc] initWithNibName:@"PDFView_iPad"
																   bundle:nil] autorelease];
	}
	else
	{
		self.viewController = [[[PDFViewController alloc] initWithNibName:@"PDFView"
																   bundle:nil] autorelease];
	}    
    [window addSubview:self.viewController.view];
    [window makeKeyAndVisible];
}

- (void)dealloc
{
    [viewController release];
    [window release];
    [super dealloc];
}


@end
