//
//  SpireEventTextProducer.m
//
//  Created by Evgeniy Sinev on 30/06/16.
//  Copyright © 2016 payneteasy. All rights reserved.
//

#import "SpireEventTextProducer.h"
#import "PayneteasyEventsBundle.h"
#import <PaynetEasyReader/SpireStatusReport49Event.h>

@implementation SpireEventTextProducer

- (NSString *)statusReport:(id)aMessage {

    if(![aMessage isKindOfClass:[SpireStatusReport49Event class]]) {
        return [NSString stringWithFormat:@"Unknown class: %@", aMessage];
    }

    SpireStatusReport49Event * status = aMessage;
    
    switch (status.status) {
        case SpireStatusType_CardEntryPrompted                : return LocalizedEventText(@"SpireStatusType_CardEntryPrompted");
        case SpireStatusType_SmartcardInserted                : return LocalizedEventText(@"SpireStatusType_SmartcardInserted");
        case SpireStatusType_SmartcardRemovePrompted          : return LocalizedEventText(@"SpireStatusType_SmartcardRemovePrompted");
        case SpireStatusType_SmartcardRemoved                 : return LocalizedEventText(@"SpireStatusType_SmartcardRemoved");
        case SpireStatusType_CardEntryBypassed                : return LocalizedEventText(@"SpireStatusType_CardEntryBypassed");
        case SpireStatusType_CardEntryTimedOut                : return LocalizedEventText(@"SpireStatusType_CardEntryTimedOut");
        case SpireStatusType_CardEntryAborted                 : return LocalizedEventText(@"SpireStatusType_CardEntryAborted");
        case SpireStatusType_CardSwiped                       : return LocalizedEventText(@"SpireStatusType_CardSwiped");
        case SpireStatusType_CardSwipeError                   : return LocalizedEventText(@"SpireStatusType_CardSwipeError");
        case SpireStatusType_ContactlessCardTapped            : return LocalizedEventText(@"SpireStatusType_ContactlessCardTapped");
        case SpireStatusType_ContactlessCardTapError          : return LocalizedEventText(@"SpireStatusType_ContactlessCardTapError");
        case SpireStatusType_ApplicationSelectionStarted      : return LocalizedEventText(@"SpireStatusType_ApplicationSelectionStarted");
        case SpireStatusType_ApplicationSelectionCompleted    : return LocalizedEventText(@"SpireStatusType_ApplicationSelectionCompleted");
        case SpireStatusType_PinEntryStarted                  : return LocalizedEventText(@"SpireStatusType_PinEntryStarted");
        case SpireStatusType_PinEntryCompleted                : return LocalizedEventText(@"SpireStatusType_PinEntryCompleted");
        case SpireStatusType_PinEntryAborted                  : return LocalizedEventText(@"SpireStatusType_PinEntryAborted");
        case SpireStatusType_PinEntryBypassed                 : return LocalizedEventText(@"SpireStatusType_PinEntryBypassed");
        case SpireStatusType_PinEntryTimedOut                 : return LocalizedEventText(@"SpireStatusType_PinEntryTimedOut");
        case SpireStatusType_LastPinEntry                     : return LocalizedEventText(@"SpireStatusType_LastPinEntry");
        case SpireStatusType_AmountConfirmationStarted        : return LocalizedEventText(@"SpireStatusType_AmountConfirmationStarted");
        case SpireStatusType_AmountConfirmationCompleted      : return LocalizedEventText(@"SpireStatusType_AmountConfirmationCompleted");
        case SpireStatusType_AmountConfirmationAborted        : return LocalizedEventText(@"SpireStatusType_AmountConfirmationAborted");
        case SpireStatusType_AmountConfirmationBypassed       : return LocalizedEventText(@"SpireStatusType_AmountConfirmationBypassed");
        case SpireStatusType_AmountConfirmationTimedOut       : return LocalizedEventText(@"SpireStatusType_AmountConfirmationTimedOut");
        case SpireStatusType_DCCSelectionStarted              : return LocalizedEventText(@"SpireStatusType_DCCSelectionStarted");
        case SpireStatusType_DCCCardholderCurrencySelected    : return LocalizedEventText(@"SpireStatusType_DCCCardholderCurrencySelected");
        case SpireStatusType_DCCCardholderCurrencyNotSelected : return LocalizedEventText(@"SpireStatusType_DCCCardholderCurrencyNotSelected");
        case SpireStatusType_DCCSelectionTimedOut             : return LocalizedEventText(@"SpireStatusType_DCCSelectionTimedOut");
        case SpireStatusType_GratuityEntryStarted             : return LocalizedEventText(@"SpireStatusType_GratuityEntryStarted");
        case SpireStatusType_GratuityEntered                  : return LocalizedEventText(@"SpireStatusType_GratuityEntered");
        case SpireStatusType_GratuityNotEntered               : return LocalizedEventText(@"SpireStatusType_GratuityNotEntered");
        case SpireStatusType_GratuityEntryTimedOut            : return LocalizedEventText(@"SpireStatusType_GratuityEntryTimedOut");

        default:
            return LocalizedEventText(@"SpireStatusType_Unknown");
    }
}

@end
