//
//  Page.swift
//
//
//  Created by Ryan Forsyth on 2023-10-03.
//

public struct Page<ItemType: Decodable>: Decodable {
    public var items: [ItemType]
    public var nextPage: String?
    
    public mutating func update(with next: Page<ItemType>) {
        items += next.items
        nextPage = next.nextPage
    }
    
    enum CodingKeys: String, CodingKey {
        case items = "collection"
        case nextPage = "nextHref"
    }
}

extension Page {
    public var hasNextPage: Bool { nextPage != nil }
}
