/*
 *  FLScanToolResponse.m
 *  OBD2Kit
 *
 *  Copyright (c) 2009-2011 FuzzyLuke Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#import "FLScanToolResponse.h"

@implementation FLScanToolResponse

- (id)init {
	if(self = [super init]) {
		_timestamp					= [[NSDate date] retain];
	}
	
	return self;
}

- (void)setMode:(NSUInteger)mode
{
	_mode = (mode ^ 0x40);
}

- (void)dealloc
{
	[_data release];
	[_responseData release];
	[_timestamp release];
	[_scanToolName release];
    
	[super dealloc];
}

@end
