# SampleFramework with GMA dependency

This is an empty framework with 2 dependencies: GoogleMobileAds and InMobi.
InMobi works fine but GoogleMobileAds fails with error:
`fatal error: 'GoogleMobileAds/GoogleMobileAds.h' file not found
#import <GoogleMobileAds/GoogleMobileAds.h>`
### To reproduce:
Either run from xcode or from the terminal by typing the following:

`xcodebuild -project SampleFramework.xcodeproj -configuration=Release -sdk iphoneos -target SampleFramework install CODE_SIGNING_REQUIRED=NO DSTROOT=""`
#### Result: 
Build failed with error: 
```
/Users/mahmoudamer/Desktop/Disk/Repos/SampleFramework/SampleFramework/SampleFramework.m:9:9: fatal error: 'GoogleMobileAds/GoogleMobileAds.h' file not found
#import <GoogleMobileAds/GoogleMobileAds.h>
        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.

** INSTALL FAILED **
```

### To reproduce without Google-Mobile_ads:
 - in SampleFramework.m, comment this line: `#import <GoogleMobileAds/GoogleMobileAds.h>`
 - in terminal, type `pod install`
 - in terminal, type the build command:
 
 `xcodebuild -project SampleFramework.xcodeproj -configuration=Release -sdk iphoneos -target SampleFramework install CODE_SIGNING_REQUIRED=NO DSTROOT=""`
 #### Result: 
 Build success 
