//
//  Deck.m
//  Matchismo
//
//  Created by Utsav Saha on 10/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//
#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;

//for private properties
@end


@implementation Deck


-(NSMutableArray *)cards{
    
    if(!_cards)
        _cards = [[NSMutableArray alloc] init];
    return _cards;
}

-(void) addCard:(Card *)card{
    
        [self.cards addObject:card];
    
    
    NSLog(@"new Card %@ Added to deck",card.contents);
}

-(Card *) drawRandomCard{
    
    Card *randomCard = nil;
    
    if([self.cards count]){
    unsigned index = arc4random() % [self.cards count];
    randomCard = self.cards[index];
     //remove the card from deck
    [self.cards removeObjectAtIndex:index];
    }

    NSLog(@"drawing a card from the Deck %@",randomCard.contents);
    return randomCard;
}


@end
