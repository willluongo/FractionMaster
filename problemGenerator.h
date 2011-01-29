//
//  problemGenerator.h
//  FractionMaster
//
//  Created by Will Luongo on 1/29/11.
//  Copyright 2011 Luongo Media. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface problemGenerator : NSObject {
	IBOutlet NSTextField *textLabel;
	IBOutlet NSTextField *textBox;
	IBOutlet NSTextField *correctLabel;
	IBOutlet NSTextField *incorrectLabel;
	IBOutlet NSButton *thatButton;
	int answer;
	int right;
	int wrong;
}


- (IBAction)updateQuestion:(id)sender;
- (IBAction)checkAnswer:(id)sender;
@end
