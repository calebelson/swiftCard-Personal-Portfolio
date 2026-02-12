import ElementaryUI

// Blog page with linked post cards (image + meta + excerpt)
// Renders items from `BlogData.posts` using `BlogPostItemView`.
@View
struct MainBlogView {
    var body: some View {
        article(.class("blog")) {
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

// Blog post card component: image, category/date meta, title and excerpt
@View
private struct BlogPostItemView {
    let post: BlogPost
    
    var body: some View {
        li(.class("blog-post-item")) {
            a(.href(post.link)) {
                figure(.class("blog-banner-box")) {
                    img(.src(post.imageURL), .alt(post.title), HTMLAttribute(name: "loading", value: "lazy"))
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
