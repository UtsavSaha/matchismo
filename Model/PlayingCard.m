//
//  PlayingCard.m
//  Matchismo
//
//  Created by Utsav Saha on 10/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit = _suit;   //if both setter and getter implemented,then synthesize is needed


+(NSArray*) validSuits{
    return @[@"♠️",@"♣️",@"♥️",@"♦️"];
}

+(NSArray *) validRanks{
    return @[@"?",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K",@"A"];
}
+(NSUInteger) maxRank{
    return [PlayingCard.validRanks count]-1;
}

-(void) setRank: (NSUInteger)rank{

    if(rank <= [PlayingCard maxRank]){
        _rank = rank;
    }
} //i dont buy this logic,setting rank on the basis of max rank ..what would happen if someone tries to give L as a rank?

-(NSString *)suit{
    return _suit ? _suit : @"?";

}

-(void)setSuit:(NSString *)suit{
    if([[PlayingCard validSuits] containsObject:suit])
    _suit = suit;
}


-(NSString *) contents{
    
    return [PlayingCard.validRanks[self.rank] stringByAppendingString:self.suit];
    
    
}

@end
