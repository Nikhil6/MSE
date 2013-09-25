#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDictionary *keyValue = [NSDictionary dictionaryWithObjectsAndKeys:
	             				[NSNumber numberWithInt:10], @"centimeter",
             					[NSNumber numberWithInt:40], @"pound",
             					[NSNumber numberWithInt:50], @"ounce",
            	 				[NSNumber numberWithInt:20], @"kilogram",
									[NSNumber numberWithInt:30], @"yard", 
									[NSNumber numberWithInt:10], @"millimeter",
									[NSNumber numberWithInt:10], @"kiloMeter", 
									[NSNumber numberWithInt:20], @"milligram", 
									[NSNumber numberWithInt:20], @"gram", 
									[NSNumber numberWithInt:10], @"Meter", nil];
	
   int endsWithMeter=0;

   //fast enumeration->looping through the key-value pairs.
	for(NSString* tempKey in keyValue)
	{
      //Checking if there exists any key which ends with meter/Meter
		if ([tempKey rangeOfString:@"meter" options: NSCaseInsensitiveSearch].location != NSNotFound)
		{  
         if(!(endsWithMeter)) //check condition to print the line only once n only when key ending with meter exists
         {
            	NSLog(@"The key(s) ending with meter are:\n");
         }
         endsWithMeter=1;
			NSLog(@"Key: %@, Value: %@\n", tempKey, [keyValue objectForKey:tempKey]);
		}
	}
   if(!(endsWithMeter))
   {
      NSLog(@"No keys ending with meter");
   }
   
	[pool release];
	return 0;
}
