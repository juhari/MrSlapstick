//
//  MrSGameScene.m
//  MrSlapstick
//
//  Created by Juha Riippi on 8/26/12.
//  Copyright (c) 2012 Juha Riippi. All rights reserved.
//

#import "MrSGameScene.h"
#import "MrSRenderer.h"
#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

@interface MrSGameScene ()

@property (nonatomic, strong) MrSRenderer *renderer;
@property (nonatomic, strong) CADisplayLink *displayLink;

@end

@implementation MrSGameScene

@synthesize renderer = _renderer;
@synthesize displayLink = _displayLink;

#pragma mark -
#pragma mark Static methods


+(MrSGameScene *)sceneWithFrame:(CGRect)frame {
    return [[MrSGameScene alloc] initWithFrame:frame];
}


#pragma mark -
#pragma mark Static UIView overrides


+(Class)layerClass {
    // Enables opengl for this view.
    return [CAEAGLLayer class];
}

#pragma mark -
#pragma mark Init and dealloc

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Setup opengl scale so that we can always use real pixels in opengl.
        // Returns the actual screen size. Basically this detects if the device has
        // a retina display and sets the scale of the opengl layer accordingly.
        CGSize size = [self setupScale];
        
        _renderer = [[MrSRenderer alloc] initForScene:self];
    }
    return self;
}

#pragma mark -
#pragma mark Public methods

-(void)start {
    // start updating graphics
    _displayLink = [[UIScreen mainScreen] displayLinkWithTarget:self selector:@selector(updateGraphics)];
    _displayLink.frameInterval = 1;
    [_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSDefaultRunLoopMode];
}

-(void)stop {
    // Stop updating graphics.
    [_displayLink invalidate];
    _displayLink = nil;
}

-(void)updatePhysics {
    
}

#pragma mark -
#pragma mark Private methods

-(CGSize)setupScale {
    CGSize size = CGSizeMake(320, 480);
    
    UIScreen *mainscr = [UIScreen mainScreen];
    CGFloat screenWidth = mainscr.currentMode.size.width;
    CGFloat screenHeight = mainscr.currentMode.size.height;
    
    // This weird implementation so that scaling works even on ipad (for testing purposes).
    if (screenWidth > 320 && screenHeight > 480) {
        self.contentScaleFactor = 2;
        CAEAGLLayer *layer = (CAEAGLLayer *) self.layer;
        layer.contentsScale = 2;
        size = CGSizeMake(640, 960);
    }
    
    return size;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
