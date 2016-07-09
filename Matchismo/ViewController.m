//
//  ViewController.m
//  Matchismo
//
//  Created by Utsav Saha on 09/07/16.
//  Copyright © 2016 StanfordUnivTutorial. All rights reserved.
//

#import "ViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property(nonatomic,strong) Deck *deck;

@end

@implementation ViewController


-(Deck *)deck{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *) createDeck{
    return [[PlayingCardDeck alloc]init];
}


-(void) setFlipCount:(int)flipCount{
    
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"flips %d", self.flipCount];
    NSLog(@"Flip count updated : new value %d",self.flipCount);
    
}


- (IBAction)cardButtonTouched:(UIButton *)sender {
    NSLog(@"card Touched ");
    
    if([sender.currentTitle length]){
    [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                        forState:UIControlStateNormal];
    
    [sender setTitle:@"" forState:UIControlStateNormal];
    }
    else{
        Card *card = [self.deck drawRandomCard];
        if(card){
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                          forState:UIControlStateNormal];
        
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
    
}


@end
