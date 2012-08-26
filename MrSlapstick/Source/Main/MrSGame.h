//
//  MrSGame.h
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * The object that binds the game subclasses.
 */
@interface MrSGame : NSObject

@property (nonatomic, assign) BOOL paused;

/**
 * Initializes the game to draw game contents on the given view
 */
-(id)initWithView:(UIView* )view;

/**
 * Start the game with a level.
 */
-(void)start;

/**
 * Stops the game.
 */
-(void)stop;


@end
