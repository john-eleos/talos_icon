#import "TalosIconsPlugin.h"
#if __has_include(<talos_icons/talos_icons-Swift.h>)
#import <talos_icons/talos_icons-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "talos_icons-Swift.h"
#endif

@implementation TalosIconsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTalosIconsPlugin registerWithRegistrar:registrar];
}
@end
