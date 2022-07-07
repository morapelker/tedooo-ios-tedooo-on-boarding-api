import Combine

public struct GroupSuggestion: Encodable, Equatable{
    
    
    public static func == (lhs: GroupSuggestion, rhs: GroupSuggestion) -> Bool {
        return lhs.id == rhs.id
    }
    
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

public struct BusinessSuggestion: Encodable, Equatable {
    
    public static func == (lhs: BusinessSuggestion, rhs: BusinessSuggestion) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    public init(id: String, name: String, rating: CGFloat, totalReviews: Int, categories: [String], description: String, image: String?) {
        self.id = id
        self.name = name
        self.rating = rating
        self.totalReviews = totalReviews
        self.categories = categories
        self.description = description
        self.image = image
    }
    
    
    public let id: String
    public let name: String
    public let rating: CGFloat
    public let totalReviews: Int
    public let categories: [String]
    public let description: String
    public let image: String?
    
}

public struct FinishOnBoardingRequest: Encodable {
    public init(interests: [String], preferences: [String], groups: [String], businesses: [String]) {
        self.interests = interests
        self.preferences = preferences
        self.groups = groups
        self.businesses = businesses
    }
    
    public let interests: [String]
    public let preferences: [String]
    public let groups: [String]
    public let businesses: [String]
}

public protocol TedoooOnBoardingApi {
    
    func getGroupSuggestions() -> AnyPublisher<[GroupSuggestion], Never>
    
    func getBusinessSuggestions() -> AnyPublisher<[BusinessSuggestion], Never>
    
    func finishOnBoarding(
        request: FinishOnBoardingRequest
    ) -> AnyPublisher<Any?, Never>
}
