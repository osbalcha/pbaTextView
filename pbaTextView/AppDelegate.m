//
//  AppDelegate.m
//  pbaTextView
//
//  Created by racso on 23/02/14.
//  Copyright (c) 2014 racso. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

    


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application

}
- (IBAction)muestraTexto:(id)sender {
    NSString *elTexto = @"Debajo del río amarillo no hay quien se fume un pitillo.";
    
//    NSArray *categorias = [NSArray arrayWithObjects:@"Redaccion",nil];
//    NSArray *hijosDeCategorias = [NSArray arrayWithObjects:@"introducción", @"nudo", @"desenlace", nil];
    
    
//    [self.miTextView setInsertionPointColor:[NSColor redColor]];
//    [self.miTextView insertText:elTexto];
//    [self.miTextView setBackgroundColor:[NSColor blueColor]];
//    NSTextContainer *elContenedor = [self.miTextView.textContainer];
    NSRange range;
    range.location = 20;
    range.length = elTexto.length;
    
    [self.miTextView setMarkedText:elTexto selectedRange:range];
//    range.location += elTexto.length;

    

}
-(void)awakeFromNib {
    dataSource = [NSArray arrayWithObjects:@"Oscar", @"Julia", @"Arturo", @"JuliaPeque", @"Camy", @"Vina",nil];
#if DEBUG
    NSLog(@"%@", dataSource);
#endif
}

-(id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item
{
    return [dataSource objectAtIndex:index];
//    return item;
}

-(BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item
{
    if (item == nil) {
        return YES;
    }
    return NO;
}

-(NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item
{
    return [dataSource count];
}

-(id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item
{
//    return @"HOLA";
    return item;
}

@end
