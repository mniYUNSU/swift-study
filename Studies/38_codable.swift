import UIKit

// Codable 이란 Decodable 과 Incodable 이 합쳐진 typealias 이다.
// Encodable : json화 한다.
// Decodable : json을 class or struct화 한다.
let jsonFromServer = """
{
    "nick_name": "개발자 배윤수",
    "job": "개발자",
    "user_name": "mniyunsu",
}
"""

struct User : Decodable {
    var nickname: String
    var job: String
    var myUserName: String
    
    enum CodingKeys: String, CodingKey {
        case nickname = "nick_name"
        case job
        case myUserName = "user_name"
    }
    
    static func getUserFromJson(_ json: String) -> Self? {
        guard let jsonData : Data = json.data(using: .utf8) else {
            return nil
        }
        do {
            let user = try JSONDecoder().decode(User.self, from: jsonData)
            print("user : \(user)")
            return user
        } catch {
            print("ERROR!! \(error.localizedDescription)")
            return nil
        }
    }
}


let user = User.getUserFromJson(jsonFromServer) // User(nickname: "개발자 배윤수", job: "개발자", myUserName: "mniyunsu")
