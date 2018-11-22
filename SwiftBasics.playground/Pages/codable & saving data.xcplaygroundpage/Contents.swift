//: [Previous](@previous)

//: Codable and saving data

import Foundation

struct Notes {
    let title: String
    let text: String
    let date: Date
}

extension Notes: Codable {}

let notes = Notes(title: "Poznámka", text: "bla bla", date: Date())
let encoder = PropertyListEncoder()

if let data = try? encoder.encode(notes) {

    let fm = FileManager.default
    let docDir = fm.urls(for: .documentDirectory, in: .userDomainMask).first
    if let notesFile = docDir?.appendingPathComponent("note").appendingPathExtension("plist") {

        do {
            try data.write(to: notesFile)
            print(notesFile.absoluteString)
            print("success")
        } catch {
            print("failed")
        }

    }
    

}


//: [Next](@next)
