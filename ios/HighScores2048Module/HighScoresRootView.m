#import <Foundation/Foundation.h>
#import <React/RCTRootView.h>
#import <React/RCTBundleURLProvider.h>

#import "HighScoresRootView.h"

@interface HighScoresRootView()

@property (strong, nonatomic) RCTRootView *reactView;

@end

@implementation HighScoresRootView

- (id)initWithFrame:(CGRect)frame initialProperties:(NSDictionary*)initialProperties
{
  self = [super initWithFrame:frame];
  if (self) {
    _reactView = [[RCTRootView alloc] initWithBundleURL: self.jsCodeLocation
                                      moduleName: @"HighScores"
                                      initialProperties: initialProperties
                                      launchOptions: nil];
    _reactView.frame = self.bounds;
    [self addSubview:_reactView];
  }
  
  return self;
}

- (NSURL *)jsCodeLocation {
  #if DEBUG
    return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
  #else
    return [[NSBundle bundleForClass:[self class]] URLForResource:@"main" withExtension:@"jsbundle"];
  #endif
}

@end
