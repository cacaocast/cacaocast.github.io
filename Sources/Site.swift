import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "This is the new CacaoCast website!"
    var baseTitle = " – CacaoCast"
    var url = URL("https://www.cacaocast.com")
    var builtInIconsEnabled = true
    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 20, image: .init(url: "https://cacaocast.com/images/favicon-32x32.png", width: 32, height: 32))

    var author = "Philippe Guitard"

    var homePage = Home()
    var theme = MyTheme()
    
    let current_year = Calendar.current.dateComponents([.year], from: Date()).year
    
    var pages: [any StaticPage] {
        About()
        for year in 2009 ... current_year! {
            Archives(path: "/Archives/\(year)", year: year)
        }
    }
    
    var layouts: [any ContentPage] {
        Episode()
    }
}


