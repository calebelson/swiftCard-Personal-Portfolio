import Elementary

public extension HTMLTag {
    enum ionIcon: HTMLTrait.Paired {
        public static let name = "ion-icon"
    }
}

public typealias ionIcon<Content: HTML> = HTMLElement<HTMLTag.ionIcon, Content>
