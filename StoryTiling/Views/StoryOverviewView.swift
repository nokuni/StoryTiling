//
//  ContentView.swift
//  IV
//
//  Created by alessandro on 15/11/21.
//
import SwiftUI



struct StoryOverviewView: View {
    
    
    
    var body: some View {
    
        
    
        
            
            GeometryReader { geometry in
                
                VStack{
                    
                    HStack{
                        Text("New Story")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "pencil")
                                .font(.title)
                                .foregroundColor(.customSystemBlue)
                            
                        })
                        Spacer()
                    }
                    .padding(.top)
                    .padding(.bottom)
                    .padding(.bottom)
                    
                    
                   
                                                      
                    /*
                     
                     List(tile.category, id: \.self) { category in
                         NavigationLink(destination: Text("test")){
                             Text(question)
                                 .font(.title)
                                 .bold()
                         }
                     }
                     
                     
                     */
                    
                    
                    
                    List{
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 17)
                                    .frame(width: geometry.size.width * 0.245, height: geometry.size.width * 0.245)
                                    .foregroundColor(.customGreen)
                                Image("detective")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .scaledToFit()
                            }
                            
                            VStack{
                                HStack{
                                    Text("Incipit")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Button(action: {
                                        
                                    }, label: {
                                        Image(systemName: "chevron.forward")
                                            .font(.title)
                                        
                                    })
                                    
                                    
                                }
                                HStack{
                                    Text("Detective")
                                        .font(.title2)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                HStack{
                                    Text("An unexperienced detective is set to solve their first case.")
                                        .font(.body)
                                    Spacer()
                                }
                            }
                            
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        .listRowInsets(EdgeInsets())
                        .background(Color.customGray)
                        
                        
                        
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 17)
                                    .frame(width: geometry.size.width * 0.245, height: geometry.size.width * 0.245)
                                    .foregroundColor(.customBlue)
                                Image("mushroom")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .scaledToFit()
                            }
                            VStack{
                                HStack{
                                    Text("Adventure")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Button(action: {
                                        
                                    }, label: {
                                        Image(systemName: "chevron.forward")
                                            .font(.title)
                                    })
                                    
                                }
                                HStack{
                                    Text("Mushroom")
                                        .font(.title2)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                HStack{
                                    Text("One day, they found a giant mushroom in the forest.")
                                        .font(.body)
                                    Spacer()
                                }
                            }
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        .padding(.top)
                        .padding(.top)
                        .listRowInsets(EdgeInsets())
                        .background(Color.customGray)
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 17)
                                    .frame(width: geometry.size.width * 0.245, height: geometry.size.width * 0.245)
                                    .foregroundColor(.customRed)
                                Image("explosion")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .scaledToFit()
                            }
                            VStack{
                                HStack{
                                    Text("Conflict")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Button(action: {
                                        
                                    }, label: {
                                        Image(systemName: "chevron.forward")
                                            .font(.title)
                                    })
                                    
                                }
                                HStack{
                                    Text("Explosion")
                                        .font(.title2)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                HStack{
                                    Text("Then, they wipe out the entire enemy base.")
                                        .font(.body)
                                    Spacer()
                                }
                            }
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        .padding(.top)
                        .padding(.top)
                        .listRowInsets(EdgeInsets())
                        .background(Color.customGray)
                        
                        
                        
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 17)
                                    .frame(width: geometry.size.width * 0.245, height: geometry.size.width * 0.245)
                                    .foregroundColor(.customPurple)
                                Image("peace")
                                    .resizable()
                                    .frame(width: 80, height: 80)
                                    .scaledToFit()
                            }
                            VStack{
                                HStack{
                                    Text("Resolution")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Button(action: {
                                        
                                    }, label: {
                                        Image(systemName: "chevron.forward")
                                            .font(.title)
                                    })
                                    
                                }
                                HStack{
                                    Text("Peace")
                                        .font(.title2)
                                        .foregroundColor(.gray)
                                    Spacer()
                                }
                                HStack{
                                    Text("So war is over and peace is restored.")
                                        .font(.body)
                                    Spacer()
                                }
                            }
                            
                        }
                        .listRowSeparator(.hidden, edges: .all)
                        .padding(.top)
                        .padding(.top)
                        .listRowInsets(EdgeInsets())
                        .background(Color.customGray)
                        
                        
                    }
                    .listStyle(.plain)
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Next")
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: geometry.size.height * 0.03)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.customSystemBlue)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    })
                        .padding(.bottom)
                        .padding(.bottom)
                    
                    
                }
                .padding()
                .background(Color.customGray)
                .navigationTitle("Overview")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("Library")
                        })
                            .foregroundColor(.customSystemBlue)
                        
                    }
                    
                    /*ToolbarItem(placement: .navigationBarTrailing) {
                     Button(action: {
                     print("Refresh")
                     }) {
                     Label("Refresh", systemImage: "arrow.clockwise")
                     }
                     }*/
                }
                //.edgesIgnoringSafeArea(.bottom)
            }
        }
    }


struct StoryOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            StoryOverviewView()
            
        }
    }
}
