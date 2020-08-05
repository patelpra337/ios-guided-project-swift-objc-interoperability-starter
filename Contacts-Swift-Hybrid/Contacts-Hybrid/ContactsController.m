//
//  ContactsController.m
//  Contacts-Hybrid
//
//  Created by Dimitri Bouniol Lambda on 8/4/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "ContactsController.h"
#import "Contacts_Hybrid-Swift.h"

@interface LSIContactsController ()

@property (nonatomic) NSMutableArray *internalsContacts;

@end

@implementation LSIContactsController

- (instancetype)init
{
    if (self = [super init]) {
        _internalsContacts = [[NSMutableArray alloc] init];
        
        LSIContact *contact = [[LSIContact alloc] initWithName:@"Dimitri" relationship:@"Myself"];
        [_internalsContacts addObject:contact];
    }
    
    return self;
}

- (NSArray *)contacts
{
    return self.internalsContacts.copy;
}

- (LSIContact *)contactAtIndex:(NSInteger)index
{
    return [self.internalsContacts objectAtIndex:index];
}

- (NSInteger)contactCount
{
    return self.internalsContacts.count;
}

@end
