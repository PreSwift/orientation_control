#import "OrientationControlPlugin.h"
#if __has_include(<orientation_control/orientation_control-Swift.h>)
#import <orientation_control/orientation_control-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "orientation_control-Swift.h"
#endif

@implementation OrientationControlPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftOrientationControlPlugin registerWithRegistrar:registrar];
}
@end
