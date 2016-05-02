#import "ProfileTableViewDataSource.h"
#import "PreferencesManager.h"
#import "PreferencesWindowController.h"
#import "ServerObjects.h"
#import "ServerForUserspace.h"

@interface ProfileTableViewDataSource ()

@property(weak) IBOutlet PreferencesWindowController* preferencesWindowController;
@property(copy) NSArray* dataSource;

@end

@implementation ProfileTableViewDataSource

- (void)load:(BOOL)force {
  if (force) {
    if (self.dataSource) {
      self.dataSource = nil;
    }
  }

  if (!self.dataSource) {
    self.dataSource = [self.preferencesWindowController.serverObjects.serverForUserspace configlist_getConfigList];
    NSLog(@"%@", self.dataSource);
  }
}

- (NSInteger)numberOfRowsInTableView:(NSTableView*)aTableView {
  [self load:NO];

  return [self.dataSource count];
}

@end
