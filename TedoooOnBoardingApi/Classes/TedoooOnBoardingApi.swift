import Combine

public struct GroupSuggestion: Encodable {
    
    public let id: String
    public let name: String
    public let participants: Int
    public let description: String
    public let image: String?
    
    public init(id: String, name: String, participants: Int, description: String, image: String?) {
        self.id = id
        self.name = name
        self.participants = participants
        self.description = description
        self.image = image
    }
    
}

public struct BusinessSuggestion: Encodable {
    
    public let id: String
    public let name: String
    public let rating: CGFloat
    public let totalReviews: Int
    public let categories: [String]
    public let description: String
    
    public init(id: String, name: String, rating: CGFloat, totalReviews: Int, categories: [String], description: String) {
        self.id = id
        self.name = name
        self.rating = rating
        self.totalReviews = totalReviews
        self.categories = categories
        self.description = description
    }
    
}

public protocol TedoooOnBoardingApi {
    
    func getGroupSuggestions() -> AnyPublisher<[GroupSuggestion], Never>
    
    func getBusinessSuggestions() -> AnyPublisher<[BusinessSuggestion], Never>
    
}