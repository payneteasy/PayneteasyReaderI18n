//
//  PayneteasyEventsBundle.h
//
//  Created by Sergey Anisiforov on 05/07/2018.
//  Copyright © 2018 payneteasy. All rights reserved.
//

#import <Foundation/Foundation.h>

#define LocalizedEventText(key) [PayneteasyEventsBundle localizedEventText:key]
#define LocalizedEventFormatText(fmt, ...) [PayneteasyEventsBundle LocalizedEventFmtText:fmt, __VA_ARGS__]

@interface PayneteasyEventsBundle : NSObject

+ (NSString *)localizedEventText:(NSString *)key;
+ (NSString *)LocalizedEventFmtText:(NSString *)fmt,...;

@end
