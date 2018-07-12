//
//  PayneteasyEventsBundle.m
//
//  Created by Sergey Anisiforov on 05/07/2018.
//  Copyright © 2018 payneteasy. All rights reserved.
//

#import "PayneteasyEventsBundle.h"

@implementation PayneteasyEventsBundle

+ (NSBundle *)eventsBundle {
    static dispatch_once_t onceInput;
    static NSBundle *bundle;
    dispatch_once(&onceInput, ^{
        bundle = [NSBundle bundleWithIdentifier:@"com.payneteasy.PayneteasyReaderI18n"];
        if (!bundle) {
            NSString *bundlePath = [[NSBundle mainBundle].resourcePath stringByAppendingPathComponent:@"PayneteasyReaderEvents.bundle"];
            bundle = [NSBundle bundleWithPath:bundlePath];
        }
    });
    return bundle;
}

+ (NSString *)localizedEventText:(NSString *)key {
    NSBundle *bundle = [self eventsBundle];
    return bundle ? [bundle localizedStringForKey:(key) value:key table:@"PayneteasyReaderEvents"] : key;
}

+ (NSString *)LocalizedEventFmtText:(NSString *)fmt,... {
    va_list args;
    va_start(args, fmt);
    NSString *result = [[NSString alloc] initWithFormat:[self localizedEventText:fmt] arguments:args];
    va_end(args);
    return result;
}

@end
