//
//  problemGenerator.m
//  FractionMaster
//
//  Created by Will Luongo on 1/29/11.
//  Copyright 2011 Luongo Media. All rights reserved.
//

#import "problemGenerator.h"


@implementation problemGenerator

- (IBAction)updateQuestion:(id)sender
{
	int denominator = (arc4random() % 12) + 1;
	int numerator = (arc4random() % denominator) + 1;
	int whole = (arc4random() % 12) * denominator;
	answer = (whole / denominator) * numerator;
	[textLabel setStringValue:[NSString stringWithFormat:@"Your total is %i, and you have to pay %i/%i. How much do you pay?", whole, numerator, denominator]];
	[correctLabel setStringValue:[NSString stringWithFormat:@"Correct: %i", right]];
	[incorrectLabel setStringValue:[NSString stringWithFormat:@"Incorrect: %i", wrong]];
	[sender setHidden:YES];
	[thatButton setTransparent:NO];
}

- (IBAction)checkAnswer:(id)sender
{
	int guess = [textBox integerValue];
	if (guess == answer)
	{
		right = right + 1;
	}
	else {
		wrong = wrong + 1;
	}
	[self updateQuestion:nil];

	
}

@end