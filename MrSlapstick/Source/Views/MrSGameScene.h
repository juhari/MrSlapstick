//
//  MrSGameScene.h
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MrSGameScene : UIView

+(MrSGameScene *)sceneWithFrame:(CGRect)frame;

/**
 * Starts the scene.
 */
-(void)start;

/**
 * This is called from the physics thread (TAZPhysicsThread). Never call this from anywhere else!
 */
-(void)updatePhysics;

/**
 * Immediately stops the scene. No collision events are fired after this call.
 */
-(void)stop;

@end
