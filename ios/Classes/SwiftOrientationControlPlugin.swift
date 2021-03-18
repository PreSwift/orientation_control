import Flutter
import UIKit

public class SwiftOrientationControlPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "orientation_control", binaryMessenger: registrar.messenger())
    let instance = SwiftOrientationControlPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
     if ("setLandscapeRight" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight, forKey: "orientation")
        }

        if ("setLandscapeLeft" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft, forKey: "orientation")
        }

        if ("setPortraitUp" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait, forKey: "orientation")
        }

        if ("setPortraitDown" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.portraitUpsideDown, forKey: "orientation")
        }

        if ("setPortraitAuto" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait, forKey: "orientation")
        }

        if ("setLandscapeAuto" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeRight, forKey: "orientation")
        }

        if ("setAuto" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait, forKey: "orientation")
        }

        if ("setAutoButUpsideDown" == call.method) {
            UIDevice.current.setValue(UIInterfaceOrientation.portrait, forKey: "orientation")
        }

        UIViewController.attemptRotationToDeviceOrientation()

        result(FlutterMethodNotImplemented)
  }
}
