
import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let firstName: String
    let lastName: String
}

struct ContentView: View {
    let users = [
        User(firstName: "Arnold", lastName: "Rimmer"),
        User(firstName: "Kristine", lastName: "Kochanski"),
        User(firstName: "David", lastName: "Lister"),
    ].sorted {
        $0.lastName < $1.lastName
    }
    
    var body: some View {
        List(users) { user in
            Text("\(user.firstName) \(user.lastName)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
