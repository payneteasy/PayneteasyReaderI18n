//
//  ReaderEventTextProducer.m
//
//  Created by Evgeniy Sinev on 30/06/16.
//  Copyright © 2016 payneteasy. All rights reserved.
//

#import "PNEReaderEvent.h"
#import "ReaderEventTextProducer.h"
#import "MiuraEventTextProducer.h"
#import "SpireEventTextProducer.h"
#import "PayneteasyEventsBundle.h"

@implementation ReaderEventTextProducer {
    MiuraEventTextProducer * _miura;
    SpireEventTextProducer * _spire;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _miura = [[MiuraEventTextProducer alloc] init];
        _spire = [[SpireEventTextProducer alloc] init];
    }

    return self;
}

- (NSString *)textFor:(PNEReaderEvent *)aEvent {
    NSString *text = nil;
    switch (aEvent.state) {
        case PNEReaderState_STARTED:
            text = LocalizedEventText(@"PNEReaderState_STARTED");
            break;
        case PNEReaderState_CONNECTING:
            text = LocalizedEventText(@"PNEReaderState_CONNECTING");
            break;
        case PNEReaderState_CONNECTED:
            text = LocalizedEventText(@"PNEReaderState_CONNECTED");
            break;
        case PNEReaderState_NOT_CONNECTED:
            text = LocalizedEventText(@"PNEReaderState_NOT_CONNECTED");
            break;
        case PNEReaderState_SCANNING:
            text = LocalizedEventText(@"PNEReaderState_SCANNING");
            break;
        case PNEReaderState_MIURA_DEVICE_INFO:
            text = [_miura deviceInfo:aEvent.message];
            break;
        case PNEReaderState_MIURA_CARD_STATUS:
            text = [_miura miuraCardStatus:aEvent.message];
            break;
        case PNEReaderState_MIURA_DEVICE_STATUS_CHANGE:
            text = [_miura miuraDeviceStatus:aEvent.message];
            break;
        case PNEReaderState_MIURA_BATTERY_STATUS_RESPONSE:
            text = [_miura battery:aEvent.message];
            break;
        case PNEReaderState_CONFIGURATION_DOWNLOADING:
            text = LocalizedEventText(@"PNEReaderState_CONFIGURATION_DOWNLOADING");
            break;
        case PNEReaderState_CONFIGURATION_UPLOADING:
            text = LocalizedEventText(@"PNEReaderState_CONFIGURATION_UPLOADING");
            break;
        case PNEReaderState_CONFIGURATION_COMPLETE:
            text = LocalizedEventText(@"PNEReaderState_CONFIGURATION_COMPLETE");
            break;
        case PNEReaderState_SENDING_SALE:
            text = LocalizedEventText(@"PNEReaderState_SENDING_SALE");
            break;
        case PNEReaderState_SENDING_EMF_FINAL_ADVICE:
            text = LocalizedEventText(@"PNEReaderState_SENDING_EMF_FINAL_ADVICE");
            break;
        case PNEReaderState_SPIRE_COMPLETE_TRANSACTION:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_COMPLETE_TRANSACTION");
            break;
        case PNEReaderState_SPIRE_GET_AMOUNT:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_GET_AMOUNT");
            break;
        case PNEReaderState_SPIRE_GET_SWIPED_DATA:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_GET_SWIPED_DATA");
            break;
        case PNEReaderState_SPIRE_GET_TRANSACTION_DATA:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_GET_TRANSACTION_DATA");
            break;
        case PNEReaderState_SPIRE_GO_ONLINE:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_GO_ONLINE");
            break;
        case PNEReaderState_SPIRE_PROCESS_SWIPED_DATA:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_PROCESS_SWIPED_DATA");
            break;
        case PNEReaderState_SPIRE_TERMINATE_TRANSACTION:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_TERMINATE_TRANSACTION");
            break;
        case PNEReaderState_SPIRE_INIT_TRANSACTION:
            text = LocalizedEventText(@"PNEReaderState_SPIRE_INIT_TRANSACTION");
            break;
        case PNEReaderState_SPIRE_STATUS_REPORT:
            text = [_spire statusReport:aEvent.message];
            break;
        default:
            text = aEvent.description;
            break;
    }
    if ([aEvent.message isKindOfClass:[NSString class]] && [aEvent.message length]) {
        text = [text stringByAppendingFormat:@"\n%@", aEvent.message];
    }
    return text;
}

@end
