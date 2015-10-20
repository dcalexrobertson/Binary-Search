//
//  main.m
//  Binary Search
//
//  Created by Alex on 2015-10-20.
//  Copyright © 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>


int binarySearch (NSMutableArray *list, NSNumber *searchItem) {
    
    NSUInteger min = 0;
    NSUInteger max = [list count] - 1;
    NSUInteger mid;
    
    BOOL found = NO;
    
    while (min <= max) {
        
        mid = (min + max) / 2;
        
        if ([searchItem intValue] == [list[mid] intValue]) {
            
            NSLog(@"We found it. It's at index %lu.", mid);
            found = YES;
            break;
            
        } else if ([searchItem intValue] > [list[mid] intValue]) {
            
            min = mid +1;
            
        } else if ([searchItem intValue] < [list[mid] intValue]) {
            
            max = mid -1;
            
        }
        
    }
    
    if (!found) {
        NSLog(@"Your number was not found");
    }
    
    return 0;
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *list = [[NSMutableArray alloc] init];
        
        for (int i = 1; i <= 100; i++) {
            NSNumber *number = [[NSNumber alloc] initWithInt:i];
            [list addObject:number];
        }
        
        NSLog(@"%@", list);
        
        binarySearch(list, @34);
        
    }
    return 0;
}
