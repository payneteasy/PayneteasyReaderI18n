//
//  ReaderEventTextProducer.h
//
//  Created by Evgeniy Sinev on 30/06/16.
//  Copyright © 2016 payneteasy. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PNEReaderEvent;

@interface ReaderEventTextProducer : NSObject

- (NSString *)textFor:(PNEReaderEvent *)aEvent;

@end
