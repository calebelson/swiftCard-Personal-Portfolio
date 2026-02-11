import ElementaryUI

@View
struct MainBlogView {
    var body: some View {
        article(.class("blog"), HTMLAttribute(name: "data-page", value: "blog")) {
            header {
                h2(.class("h2 article-title")) { "Blog" }
            }

            ul(.class("blog-posts-list")) {
                for post in BlogData.posts {
                    BlogPostItemView(post: post)
                }
            }
        }
    }
}

@View
private struct BlogPostItemView {
    let post: BlogPost
    
    var body: some View {
        li(.class("blog-post-item")) {
            a(.href(post.link)) {
                figure(.class("blog-banner-box")) {
                    img(.src(post.imageUrl), .alt(post.title), HTMLAttribute(name: "loading", value: "lazy"))
                }
                div(.class("blog-content")) {
                    div(.class("blog-meta")) {
                        p(.class("blog-category")) { post.category }
                        span(.class("dot")) { "" }
                        time(HTMLAttribute(name: "datetime", value: post.datetime)) { post.date }
                    }

                    h3(.class("h3 blog-item-title")) { post.title }
                    p(.class("blog-text")) { post.text }
                }
            }
        }
    }
}
