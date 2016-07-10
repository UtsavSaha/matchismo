//
//  PlayingCard.h
//  Matchismo
//
//  Created by Utsav Saha on 10/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property(strong,nonatomic) NSString *suit;
@property(nonatomic) NSUInteger rank;

+(NSArray *) validSuits;
+(NSUInteger) maxRank;
+(NSArray*) validRanks;

@end
