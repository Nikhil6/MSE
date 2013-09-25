//
//  newViewController.h

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface newViewController : UIViewController
{
  //ing *temp;
}
@property (weak, nonatomic) IBOutlet UILabel *userOutput;
- (IBAction)logout:(UIButton *)sender;
@property (retain, nonatomic) NSString * temp;
@end
