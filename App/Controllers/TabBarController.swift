//import HotwireNative
//import UIKit
//
//let baseURL = URL(string: "http://localhost:3000")!
//
//class TabBarController: UITabBarController {
//    private var navigators = [Navigator]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        delegate = self
//
//        viewControllers = makeViewControllers()
//
//        tabBarController(self, didSelect: viewControllers!.first!)
//    }
//
//    private func makeViewControllers() -> [UIViewController] {
//        return Tab.all.map { tab in
//            let navigatorConfig = Navigator.Configuration(name: "main", startLocation: baseURL.appending(path:  tab.path))
//            let navigator = Navigator(configuration: navigatorConfig)
//
//            navigators.append(navigator)
//            
//            let controller = navigator.rootViewController
//            controller.tabBarItem.title = tab.title
//            controller.tabBarItem.image = UIImage(systemName: tab.image)
//            return controller
//        }
//    }
//}
//
//extension TabBarController: UITabBarControllerDelegate {
//    func tabBarController(
//        _ tabBarController: UITabBarController,
//        didSelect viewController: UIViewController) {
//            guard let index = viewControllers?.firstIndex(of: viewController)
//            else { return }
//            
//            let tab = Tab.all[index]
//            if !tab.isStarted {
//                navigators[index].route(baseURL.appending(path: tab.path))
//                tab.isStarted = true
//            }
//        }
//}
////
////extension TabBarController: NavigatorDelegate {
////    func handle(proposal: VisitProposal) -> ProposalResult {
////        switch proposal.viewController {
////        case "map": 
////            let mapController = MapController(url: proposal.url)
////            return .acceptCustom(mapController)
////        default:
////            return .accept
////        }
////    }
////}
