import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var getirCollectionView: UICollectionView!
    
    var categoryList = [Kategoriler]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getirCollectionView.delegate = self
        getirCollectionView.dataSource = self
        
        let c1 = Kategoriler(kategoriId: 1, kategoriName: "Yeni Ürünler", kategoriImage: "yeniUrunler")
        let c2 = Kategoriler(kategoriId: 2, kategoriName: "İndirimler", kategoriImage: "indirimler")
        let c3 = Kategoriler(kategoriId: 3, kategoriName: "Bana Özel", kategoriImage: "banaOzel")
        let c4 = Kategoriler(kategoriId: 4, kategoriName: "Su & İçecek", kategoriImage: "icecek")
        let c5 = Kategoriler(kategoriId: 5, kategoriName: "Meyve&Sebze", kategoriImage: "meyve")
        let c6 = Kategoriler(kategoriId: 6, kategoriName: "Fırından", kategoriImage: "firindan")
        let c7 = Kategoriler(kategoriId: 7, kategoriName: "Temel Gıda", kategoriImage: "temelgida")
        let c8 = Kategoriler(kategoriId: 8, kategoriName: "Atıştırmalık", kategoriImage: "atistirmalik")
        let c9 = Kategoriler(kategoriId: 9, kategoriName: "Dondurma", kategoriImage: "dondurma")
        let c10 = Kategoriler(kategoriId: 10, kategoriName: "Süt Ürünleri", kategoriImage: "sut")
        let c11 = Kategoriler(kategoriId: 11, kategoriName: "Kahvaltılık", kategoriImage: "kahvaltilik")
        let c12 = Kategoriler(kategoriId: 12, kategoriName: "Yiyecek", kategoriImage: "yiyecek")
        let c13 = Kategoriler(kategoriId: 13, kategoriName: "Fit & Form", kategoriImage: "fitForm")
        let c14 = Kategoriler(kategoriId: 14, kategoriName: "Kişisel Bakım", kategoriImage: "kisiselbakim")
        let c15 = Kategoriler(kategoriId: 15, kategoriName: "Ev Bakım", kategoriImage: "evbakim")
        let c16 = Kategoriler(kategoriId: 16, kategoriName: "Ev & Yaşam", kategoriImage: "evYasam")
        let c17 = Kategoriler(kategoriId: 17, kategoriName: "Teknoloji", kategoriImage: "teknoloji")
        let c18 = Kategoriler(kategoriId: 18, kategoriName: "Evcil Hayvan", kategoriImage: "evcilHayvan")
        let c19 = Kategoriler(kategoriId: 19, kategoriName: "Bebek", kategoriImage: "bebek")
        let c20 = Kategoriler(kategoriId: 20, kategoriName: "Cinsel Sağlık", kategoriImage: "cinselsaglik")
        
        categoryList.append(c1)
        categoryList.append(c2)
        categoryList.append(c3)
        categoryList.append(c4)
        categoryList.append(c5)
        categoryList.append(c6)
        categoryList.append(c7)
        categoryList.append(c8)
        categoryList.append(c9)
        categoryList.append(c10)
        categoryList.append(c11)
        categoryList.append(c12)
        categoryList.append(c13)
        categoryList.append(c14)
        categoryList.append(c15)
        categoryList.append(c16)
        categoryList.append(c17)
        categoryList.append(c18)
        categoryList.append(c19)
        categoryList.append(c20)
        
        let tasarim = UICollectionViewFlowLayout()
            tasarim.sectionInset = UIEdgeInsets(top: 10, left: 12, bottom: 5, right: 3)
            tasarim.minimumInteritemSpacing = 6
            tasarim.minimumLineSpacing = 5
        let genislik = getirCollectionView.frame.size.width
        let yatayUzunluk = (genislik - 10) / 5
        tasarim.itemSize = CGSize(width: yatayUzunluk, height: yatayUzunluk * 1.2)
        getirCollectionView.collectionViewLayout = tasarim
        
    }
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categoryList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let kategori = categoryList[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategoriHucre", for: indexPath) as! CategoryCollectionViewCell
        cell.categoryImageView.image = UIImage(named: kategori.kategoriImage!)
        cell.categoryNameLabel.text = kategori.kategoriName!
        
        return cell
    }
    
    
}

