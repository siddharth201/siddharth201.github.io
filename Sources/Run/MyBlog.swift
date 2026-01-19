import Foundation
import Publish
import Plot

struct MyBlog: Website {

    enum SectionID: String, WebsiteSectionID {
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata { }

    var url = URL(string: "https://siddharth201.github.io")!

    var name = "Swift Interview Notes"
    var description = "My personal Swift & iOS interview preparation notes"
    var language: Language { .english }
    var imagePath: Path? { nil }
}
