import SwiftUI

struct Profile: View {
    var body: some View {
        ZStack {
            Color("background1")
                .ignoresSafeArea()
            
            VStack {
                Form {
                    Section {
                        HStack {
                            Text("MB")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("background1"))
                                .frame(width: 72, height: 72)
                                .background(Color("accent1"))
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Mohamed Badir")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("text1"))
                                    .padding(.top, 4)
                                
                                Text("example@email.com")
                                    .font(.footnote)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("text1"))
                            }
                        }
                        
                    }.listRowBackground(Color("secondary1"))
                    
                    // account info section
                    Section("Account Settings") {
                        
                            SectionRowView(imageName: "square.and.pencil.circle.fill", imageColor: "text1",
                                           title: "Details", titleColor: "text1")
                        
                    }.listRowBackground(Color("secondary1"))

                    
                    
                    // preferences section
                    Section("Preferences") {
                        
                        SectionRowView(imageName: "eye.circle.fill", imageColor: "text1",
                                       title: "Appearance", titleColor: "text1")
                         
                        
                        SectionRowView(imageName: "textformat.alt", imageColor: "text1",
                                       title: "Language", titleColor: "text1")
                        
                        
                        
                    }.listRowBackground(Color("secondary1"))
                    
                    
                    // about the app section
                    Section("About") {
                        HStack {
                            SectionRowView(imageName: "gear", imageColor: "accent",
                                           title: "Version", titleColor: "text1")
                            
                            Spacer()
                            
                            Text("1.0.0")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                    }.listRowBackground(Color("secondary1"))

                    Section("Action") {
                        
                        SectionRowView(imageName: "arrow.left.circle.fill", imageColor: "red", title: "Sign Out", titleColor: "text1")
                        
                        SectionRowView(imageName: "xmark.circle.fill", imageColor: "red", title: "Delete Account", titleColor: "text1")
                        
                        
                    }.listRowBackground(Color("secondary1"))
                    
                    
                }
                .scrollContentBackground(.hidden)
                
                
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
