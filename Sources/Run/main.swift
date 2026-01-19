try MyBlog().publish(
    using: [
        .addMarkdownFiles(),
        .copyResources(),
        .generateHTML(
            withTheme: .foundation,
            relativePaths: true
        ),
        .generateRSSFeed(including: [.posts]),
        .generateSiteMap()
    ]
)

