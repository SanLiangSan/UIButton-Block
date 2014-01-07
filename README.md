UIView-Block
============
This is a catergory for UIView such as the demo for "UIButton" in this project,we can touch button with a block .

How To Use It
----------------------
Only to call :
      - (void) setAction:(NSString *)action withBlock:(void(^)())block;
if you want to Extension touch method ,you can add a define value such as :
      #define kUIButtonBlockTouchInside @"TouchInside"
 and add target to the action.
