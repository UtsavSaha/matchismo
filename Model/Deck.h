//
//  Deck.h
//  Matchismo
//
//  Created by Utsav Saha on 10/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//

@import Foundation;
#import "Card.h"

@interface Deck : NSObject

-(void) addCard : (Card *)card;
-(Card *) drawRandomCard;

@end
