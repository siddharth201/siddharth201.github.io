try MyBlog().publish(
    using: [
        .addMarkdownFiles(),
        .copyResources(),
        .replacePathsWithRelativePaths(),
        .generateHTML(withTheme: .foundation),
        .generateRSSFeed(including: [.posts]),
        .generateSiteMap()
    ]
)
