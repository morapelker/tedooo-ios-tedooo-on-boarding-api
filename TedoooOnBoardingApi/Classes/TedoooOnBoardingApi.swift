import Combine

public struct GroupSuggestion: Encodable {
    
    public let name: String
    public let participants: Int
    public let description: String
    public let image: String?
    
    public init(name: String, participants: Int, description: String, image: String?) {
        self.name = name
        self.participants = participants
        self.description = description
        self.image = image
    }
    
}

public protocol TedoooOnBoardingApi {
    
    func getGroupSuggestions() -> AnyPublisher<[GroupSuggestion], Never>
    
}
