//
//  JLWeatherPicker.h
//  
//
//  Created by Jordan Lewis on 16/04/2014.
//  Copyright (c) 2014 JordanLewis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JLWeatherPicker : UIPickerView <UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *weatherConditions;
}

-(id)initWithLocation:(CGPoint)location;

-(NSString *)selectedWeatherCondition;

@end
