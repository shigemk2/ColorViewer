class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    # @window.rootViewController =
    # ColorsController.alloc.initWithNibName(nil, bundle: nil)
    controller = ColorsController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

    @window.rootViewController = nav_controller

    true
  end
end
