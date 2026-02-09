import ElementaryUI

@View
struct MainPortfolioView {
    var body: some View {
        article(.class("portfolio"), HTMLAttribute(name: "data-page", value: "portfolio")) {
            header {
                h2(.class("h2 article-title")) { "Portfolio" }
            }
        }
    }
}
