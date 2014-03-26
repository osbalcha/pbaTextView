//
//  AppDelegate.h
//  pbaTextView
//
//  Created by racso on 23/02/14.
//  Copyright (c) 2014 racso. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSOutlineViewDataSource>
{
    NSArray *dataSource;
}


@property (assign) IBOutlet NSWindow *window;
@property (strong)IBOutlet NSTextView *miTextView;
@property (strong)IBOutlet NSOutlineView *miOutlineView;

@end
