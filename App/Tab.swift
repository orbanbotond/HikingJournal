import HotwireNative
import UIKit

let baseURL = URL(string: "http://localhost:3000")!

class Tab {
    let title: String
    let image: String
    let path: String
    
    var isStarted = false
    
    static var all = [
        Tab(title: "Hikes", image: "map", path: "hikes"),
        Tab(title: "Hikers", image: "figure.hiking", path: "users"),
        Tab(title: "Likes", image: "hand.thumbsup", path: "likes"),
    ]

    static func hotwireTabs() -> [HotwireTab] {
        return Tab.all.map { tab in
            return HotwireTab(
                title: tab.title,
                image: UIImage(systemName: tab.image)!,
                url: baseURL.appending(path: tab.path)
           )
        }
    }
    
    init(title: String, image: String, path: String) {
        self.title = title
        self.image = image
        self.path = path
    }
}
