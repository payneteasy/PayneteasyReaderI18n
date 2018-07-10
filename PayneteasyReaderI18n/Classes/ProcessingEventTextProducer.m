//
//  ProcessingEventTextProducer.m
//
//  Created by Evgeniy Sinev on 30/06/16.
//  Copyright © 2016 payneteasy. All rights reserved.
//

#import "ProcessingEventTextProducer.h"
#import "PayneteasyEventsBundle.h"
#import <PaynetEasyReader/PaynetStatusResponse.h>
#import <PaynetEasyReader/PNEProcessingEvent.h>

@implementation ProcessingEventTextProducer

- (NSString *)textFor:(PNEProcessingEvent *)aEvent {

    switch (aEvent.type) {
        case PNEProcessingEventType_EXCEPTION               : return LocalizedEventText(@"PNEProcessingEventType_EXCEPTION");
        case PNEProcessingEventType_ADVICE_REQUIRED         : return LocalizedEventText(@"PNEProcessingEventType_ADVICE_REQUIRED");
        case PNEProcessingEventType_ADVICE_RESPONSE_WAITING : return LocalizedEventText(@"PNEProcessingEventType_ADVICE_RESPONSE_WAITING");
        case PNEProcessingEventType_ADVICE_SENDING          : return LocalizedEventText(@"PNEProcessingEventType_ADVICE_SENDING");
        case PNEProcessingEventType_ERROR_3D_SECURE         : return LocalizedEventText(@"PNEProcessingEventType_ERROR_3D_SECURE");
        case PNEProcessingEventType_SALE_SENDING            : return LocalizedEventText(@"PNEProcessingEventType_SALE_SENDING");
        case PNEProcessingEventType_SALE_RESPONSE_WAITING   : return LocalizedEventText(@"PNEProcessingEventType_SALE_RESPONSE_WAITING");
        case PNEProcessingEventType_RESULT                  : return [self result:aEvent.result];

        default:
            return LocalizedEventText(@"PNEProcessingEventType_UNKNOWN");
    }

    return nil;
}

- (NSString *)result:(PaynetStatusResponse *)aResponse {
    switch (aResponse.status) {
        case PaynetStatusTypeApproved:
            return LocalizedEventText(@"PaynetStatusTypeApproved");

        case PaynetStatusTypeDeclined:
            return LocalizedEventText(@"PaynetStatusTypeDeclined");

        case PaynetStatusTypeError:
            return LocalizedEventText(@"PaynetStatusTypeError");

        case PaynetStatusTypeFiltered:
            return LocalizedEventText(@"PaynetStatusTypeFiltered");

        case PaynetStatusTypeProcessing:
            return LocalizedEventText(@"PaynetStatusTypeProcessing");

        default:
            return LocalizedEventText(@"PaynetStatusTypeUnknown");

    }
    return nil;
}

@end
