import ElementaryUI

@View
struct MainBlogView {
    var body: some View {
        article(.class("blog"), HTMLAttribute(name: "data-page", value: "blog")) {
            header {
                h2(.class("h2 article-title")) { "Blog" }
            }
        }
    }
}
