import Foundation
import UIKit

public class WiseTrack {
    public static let shared = WiseTrack()
    
    private init() {}

    public func startTracking() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(applicationDidEnterBackground),
            name: UIApplication.didEnterBackgroundNotification,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(applicationWillEnterForeground),
            name: UIApplication.willEnterForegroundNotification,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(applicationDidFinishLaunching),
            name: UIApplication.didFinishLaunchingNotification,
            object: nil
        )
    }
    
    @objc private func applicationDidEnterBackground() {
        print("App entered background")
    }
    
    @objc private func applicationWillEnterForeground() {
        print("App will enter foreground")
    }

    @objc private func applicationDidFinishLaunching() {
        print("App did finish launching")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}
