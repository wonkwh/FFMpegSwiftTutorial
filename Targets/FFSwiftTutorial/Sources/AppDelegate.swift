import UIKit
import FFSwiftTutorialKit
import FFSwiftTutorialUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
  ) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)
    let viewController = UIViewController()
    viewController.view.backgroundColor = .white
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()


    let avUtilVersion = FFVersionHelper.avUtilVersion
    let avCodecVersion = FFVersionHelper.avCodecVersion
    print("avutil version:  \(avUtilVersion), avcodec: \(avCodecVersion)" )
    print("codec config \(FFVersionHelper.codecConfiguration)")
    print("format config \(FFVersionHelper.formatConfiguration)")
    FFSwiftTutorialUI.hello()

    return true
  }

}
