class Food {
  String name;

  String description;
  String ingredients;
  String foodPrice;

  String foodCategory;
  String foodRating;
  String imageAsset;

  Food({
    required this.name,
    required this.description,
    required this.ingredients,
    required this.foodPrice,
    required this.foodCategory,
    required this.foodRating,
    required this.imageAsset,
  });
}

List<Food> foodList = [
  Food(
    name: 'Nasi Tutug Oncom',
    description:
        'Nasi Tutug Oncom atau Sangu Tutug Oncom dalam Bahasa Sunda sering disingkat Nasi T.O adalah makanan yang dibuat dari nasi yang diaduk dengan oncom goreng atau bakar. Penyajian makanan ini umumnya dalam keadaan hangat. Secara bahasa, kata tutug dalam Bahasa Sunda artinya menumbuk.',
    ingredients:
        '150 gram (gr) oncom, 2 piring nasi putih, 2 siung bawang putih, 4 siung bawang merah, 4 buah cabai rawit (sesuai selera), 1 buah cabai merah keriting (sesuai selera), 2 ruas kencur.',
    foodPrice: '18.000 IDR',
    foodCategory: 'Healty Food',
    foodRating: '4',
    imageAsset: 'images/tutugOncom.jpg',
  ),
  Food(
    name: 'Seblak',
    description:
        'Seblak adalah makanan Indonesia yang dikenal berasal dari Bandung, Jawa Barat yang bercita rasa gurih dan pedas. Terbuat dari kerupuk basah yang dimasak dengan sayuran dan sumber protein seperti telur, ayam, boga bahari, atau olahan daging sapi, dan dimasak dengan kencur. ',
    ingredients:
        '2 sdm minyak sayur, 2 sdm cabe merah giling, 2 siung bawang putih parut, 500 ml air ,2 sdm kerupuk aci rebus,5 buah otak-otak rebus,50 gr makaroni rebus, 5 buah siomay rebus, 1/2 sdt gula pasir, 1/2 sdt merica bubuk,1 sdt garam,1 butir telur ayam',
    foodPrice: '15.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4.5',
    imageAsset: 'images/seblak.jpg',
  ),
  Food(
    name: 'Nasi Timbel',
    description:
        'Nasi timbel adalah masakan Sunda yang populer di Jawa Barat dan Banten. Makanan ini biasanya dibuat dari beras bagolo atau beras merah campuran yang dimasak dengan bungkus daun pisang.',
    ingredients:
        '2 cup beras 2 batang serai 2 ruas lengkuas 5 lembar daun salam 2 siung bawang putih 5 siung bawang merah Cabai sesuai selera 1/2 ekor ayam, potong kecil-kecil Ikan teri Garam secukupnya Merica secukupnya Penyedap rasa kaldu jamur non-msg',
    foodPrice: '22.000 IDR',
    foodCategory: 'Healty Food',
    foodRating: '4.2',
    imageAsset: 'images/nasiTimbel.jpg',
  ),
  Food(
    name: 'Karedok',
    description:
        'Karedok adalah makanan khas Sunda yang mudah dibuat di rumah. Cara membuat karedok cukup dengan siram sayuran mentah dengan bumbu kacang. Tambah juga kerupuk.',
    ingredients:
        '¼ buah kol, iris tipis 5 buah kacang panjang, iris tipis 100 gram taoge 1 buah mentimun, iris tipis 10 lembar daun kemangi 2 buah terung gelatik, iris tipis',
    foodPrice: '16.000 IDR',
    foodCategory: 'Healty Food',
    foodRating: '4.4',
    imageAsset: 'images/karedok.jpg',
  ),
  Food(
    name: 'Surabi',
    description:
        'Serabi merupakan jajanan pasar tradisional yang berasal dari Indonesia. Ada dua jenis serabi, yaitu serabi manis yang menggunakan kinca dan serabi asin dengan atau tanpa taburan oncom yang telah dibumbui di atasnya.',
    ingredients:
        '500 ml santan dari 1/2 butir kelapa, sisihkan parutan kelapanya 200 gram tepung terigu protein sedang 1/2 sendok teh garam 1 butir telur ayam, dikocok lepas 1 sendok teh baking powder,200 gram oncom, dibakar, dicincang kasar 1 batang serai, dimemarkan 2 buah cabai rawit merah, diiris 1 sendok teh garam 1/2 sendok teh gula merah 1/4 sendok teh merica bubuk 100 ml santan dari 1/4 butir kelapa 2 sendok makan minyak untuk menumis',
    foodPrice: '4.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4',
    imageAsset: 'images/surabi.jpg',
  ),
  Food(
    name: 'Ulukutek Leunca',
    description:
        'Ulekutek oncom adalah makanan khas Jawa Barat yang berbahan dasar oncom. Nama ulekutek berasal dari cara pembuatannya dengan cara di ulek atau di tumbuk, sedangkan kutek berasal dari bahasa sunda yang artinya diaduk.',
    ingredients:
        '2 kotak oncom, remas-remas. 3 bh cabai merah, iris serong 3 bh cabai hijau, iris serong 5 bh bawang merah, iris tipis 3 bh bawang putih, iris tipis 1 ruas lengkuas, memarkan 2 btg serai, memarkan 1 ikat kemangi, ambil daunnya 1 btg daun bawang iris serong. 2 sdm leunca 1 btr telur, kocok lepas. 100 ml air',
    foodPrice: '7.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4.6',
    imageAsset: 'images/ulekLenca.jpg',
  ),
  Food(
    name: 'Bandros',
    description:
        'Bandros adalah salah satu makanan khas daerah Jawa Barat Kue tradisional ini terbuat dari campuran tepung beras, kelapa parut, daun suji dan santan. Kue ini biasanya dihidangkan dengan taburan gula pasir.',
    ingredients:
        '5 buah kuning telur 2 buah putih telur 150 gram gula pasir 150 gram tepung terigu protein sedang 1/2 sdt garam 200 ml santan, dari 1/2 butir kelapa 1/2 sdm margarin, lelehkan',
    foodPrice: '3.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4',
    imageAsset: 'images/bandros.jpg',
  ),
  Food(
    name: 'Colenak',
    description:
        'Colenak atau dikenal juga dengan tape bakar adalah nama yang diberikan pada kudapan yang dibuat dari peuyeum yang dibakar yang disantap dengan dicocolkan pada gula jawa cair yang dicampur dengan serutan kelapa. Kudapan ini berasal dari Bandung yang dikenalkan oleh Aki Murdi pada tahun 1930.',
    ingredients:
        'Tapai singkong 200 gram Sagu tani 10 gram Margarin secukupnya,Kelapa parut 200 gram Gula merah 150 gram Pandan 1 lembar Nangka 50 gram',
    foodPrice: '5.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4',
    imageAsset: 'images/colenak.jpg',
  ),
  Food(
    name: 'Peyeum',
    description:
        'Tapai atau tape adalah kudapan yang dihasilkan dari proses fermentasi bahan pangan berkarbohidrat sebagai substrat oleh ragi. Di Indonesia dan negara-negara tetangganya, substrat ini biasanya beras ketan dan umbi singkong. ',
    ingredients:
        '300 gram tape singkong, buang seratnya dan potong-potong  100 gram tepung beras 25 gram tepung terigu 100 gram gula merah, sisir 1 butir telur  30 gram gula pasir 1/2 sdt vanili bubuk  1/2 sdt garam  200 ml air suam-suam kuku  Minyak untuk menggoreng',
    foodPrice: '10.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4',
    imageAsset: 'images/peyem.jpg',
  ),
  Food(
    name: 'Wajit',
    description:
        'Wajik adalah salah satu ragam kekayaan kuliner di Indonesia. Kue wajik memiliki beberapa sebutan yang berbeda-beda di setiap tempat. Nama wajik sendiri lebih terkenal di daerah Jawa Tengah. Kue wajik di Sumatra disebut pulut manis. Wajik yang berasal dari ketan juga disebut dengan istilah ketan wajik.',
    ingredients:
        '1 kg beras ketan yang baru dan baik 3 butir kelapa tua (parut dan jadikan santan 1000 ml) 750 gram gula pasir 1 sdt garam halus 5 lembar daun pandan, simpulkan Minyak goreng, untuk mengoles loyang/cetakan Daun pisang/alas plastik Jika ingin membuat dengan variasi warna, tambahkan dalam adonan 100 ml larutan pewarna alami bila suka.',
    foodPrice: '5.000 IDR',
    foodCategory: 'Fast Food',
    foodRating: '4',
    imageAsset: 'images/wajit.jpg',
  ),
];
