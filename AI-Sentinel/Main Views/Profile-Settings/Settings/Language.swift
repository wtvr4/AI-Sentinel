import SwiftUI

struct Language: View {


    
    var language = ["English"]
    @State private var selectedLanguage = "English"
    
    var body: some View {
        ZStack {
            Color("background")
                .ignoresSafeArea()
            
            VStack {
                Form {
                    Section("language"){
                        Picker("Choose Your Language", selection: $selectedLanguage){
                            ForEach(language, id: \.self){
                                Text($0)
                            }
                        }
                    }
                }
                .scrollContentBackground(.hidden)
                .foregroundColor(.init(Color("text")))
                .listStyle(InsetGroupedListStyle()) //list style can be changed later on
                .navigationBarTitle("Edit Profile")
            }
        }

    }
}

struct Language_Previews: PreviewProvider {
    static var previews: some View {
        Language()
    }
}
