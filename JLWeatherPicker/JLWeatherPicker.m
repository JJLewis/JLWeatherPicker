//
//  JLWeatherPicker.m
//
//
//  Created by Jordan Lewis on 16/04/2014.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import "JLWeatherPicker.h"

@implementation JLWeatherPicker

-(NSString *)selectedWeatherCondition {
    return [self pickerView:self titleForRow:[self selectedRowInComponent:0] forComponent:0];
}

- (NSInteger)numberOfComponentsInPickerView: (UIPickerView*)thePickerView {
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    return [weatherConditions count];
}

- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [weatherConditions objectAtIndex:row];
}

- (id)initWithLocation:(CGPoint)location
{
    CGRect frame = CGRectMake(location.x, location.y, 320, 162);
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        weatherConditions = @[
                              @"Fair",
                              @"Raining",
                              @"Snow",
                              @"Icy",
                              @"Fog",
                              ];
        
        self.delegate = self;
        self.dataSource = self;
        self.showsSelectionIndicator = YES;
    }
    return self;
}

@end
