import Foundation

class Kategoriler {

    var kategoriId:Int?
    var kategoriName:String?
    var kategoriImage:String?
    
    init(kategoriId: Int?, kategoriName: String?, kategoriImage: String?) {
        self.kategoriId = kategoriId
        self.kategoriName = kategoriName
        self.kategoriImage = kategoriImage
    }
}
