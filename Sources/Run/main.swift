import Foundation
import Publish

try MyBlog().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .foundation),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap()
])
