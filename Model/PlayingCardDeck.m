//
//  PlayingCardDeck.m
//  Matchismo
//
//  Created by Utsav Saha on 10/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck


-(instancetype) init{
    
    self = [super init];
    
    if(self){
        
        for(NSString *suit in [PlayingCard validSuits]){
            //for(NSUInteger *ranks in [PlayingCard validRanks]){
            for(NSUInteger rank = 1; rank <= [PlayingCard maxRank] ; rank++){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.rank = rank;
                card.suit = suit;
                [self addCard:card];
            }
        }
    }
    
    return self;
    
}


@end
