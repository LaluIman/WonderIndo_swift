//
//  IndoClass.swift
//  Wonderful Indonesia
//
//  Created by Lalu Iman Abdullah on 07/04/24.
//

import Foundation

struct Place: Identifiable{
    var id = UUID()
    var name: String // nama
    var location: String // lokasi
    var info: String //deskripsi
    var locationImage: String //foto tempat
    var provinsiImage: String //gambar provinsi
}

class PlaceManager: ObservableObject{
    @Published var places: [Place] = [
        // borobudur
        Place(
            name:"Candi Borobudur",
            location: "Magelang, Jawa Tengah",
            info: "Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut Yogyakarta.",
            locationImage: "borobudur",
            provinsiImage: "Boro"
        ),
        // pulau komodo
        Place(
            name:"Pulau Komodo",
            location: " Nusa Tenggara Timur",
            info: "Pulau Komodo adalah sebuah pulau yang terletak di Kepulauan Nusa Tenggara, berada di sebelah timur Pulau Sumbawa, yang dipisahkan oleh Selat Sape. Pulau Komodo dikenal sebagai habitat asli hewan komodo. Pulau ini termasuk salah satu kawasan Taman Nasional Komodo yang dikelola oleh Pemerintah Pusat.",
            locationImage: "komodo",
            provinsiImage: "Komodoo"
        ),
        // bromo
        Place(
            name:"Gunung Bromo",
            location: "Jawa Timur",
            info: "Gunung Bromo atau dalam bahasa Tengger dieja 'Brama', juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.",
            locationImage: "bromo",
            provinsiImage: "Bromoo"
        ),
        // raja ampat
        Place(
            name:"Raja Ampat",
            location: "Papua Barat Daya",
            info: "Kepulauan Raja Ampat adalah gugusan kepulauan yang berlokasi di barat bagian Semenanjung Kepala Burung (Vogelkoop) Pulau Papua. Secara administrasi, gugusan ini berada di bawah Kabupaten Raja Ampat dan Kota Sorong, Provinsi Papua Barat Daya. Kepulauan ini sekarang menjadi tujuan para penyelam yang tertarik akan keindahan pemandangan bawah lautnya. Empat gugusan pulau yang menjadi anggotanya dinamakan menurut empat pulau terbesarnya, yaitu Pulau Waigeo, Pulau Misool, Pulau Salawati, dan Pulau Batanta.",
            locationImage: "ampat",
            provinsiImage: "Ampato"
        ),
        // Pura Ulun
        Place(
            name:"Pura Bratan",
            location: "Bali",
            info: "Pura Ulun Danu Bratan, Pura Ulun Danu Beratan atau Bratan Pura merupaka[1]n sebuah pura dan candi air besar di Bali, Indonesia - candi utama air lainnya menjadi Pura Ulun Danu Batur. Kompleks candi ini terletak di tepi barat laut Danau Bratan di pegunungan dekat Bedugul, Kabupaten Tabanan. Candi air memenuhi seluruh wilayah di daerah aliran; di tepi hilir ada banyak candi kecil air yang spesifik untuk setiap asosiasi irigasi (subak). Candi ini sebenarnya digunakan untuk upacara persembahan untuk dewi Dewi Danu, dewi air, danau dan sungai. Danau Bratan merupakan salah satu danau penting dalam hal irigasi. Danau Bratan dikenal sebagai danau 'gunung suci', kawasan ini sangat subur, terletak pada ketinggian 1.200 meter, dan beriklim sangat dingin.Pura Batur atau Pura Ulun Danu pertama kali didirikan pada abad ke-17. Pura ini didedikasikan untuk dewa Wisnu dan untuk dewi danau Dewi Danu. Danau Batur, danau terbesar di Bali, dianggap paling penting di pulau Bali sebagai sumber air utama untuk kegiatan pertanian di Bali.[2]",
            locationImage: "puraulun",
            provinsiImage: "Pura"
        ),
        // Derawan
        Place(
            name:"Pulau Derawan",
            location: "Berau Kalimantan",
            info: "Kepulauan Derawan adalah sebuah kepulauan yang berada di Kabupaten Berau, Kalimantan Timur. Di kepulauan ini terdapat sejumlah objek wisata bahari menawan, salah satunya Taman Bawah Laut yang diminati wisatawan mancanegara terutama para penyelam kelas dunia.Kepulauan Derawan memiliki tiga kecamatan yaitu, Pulau Derawan, Maratua, dan Biduk Biduk, Berau.Sedikitnya ada empat pulau yang terkenal di kepulauan tersebut, yakni Pulau Maratua, Derawan, Sangalaki, dan Kakaban yang ditinggali satwa langka penyu hijau dan penyu sisik.Secara geografis, terletak di semenanjung utara perairan laut Kabupaten Berau yang terdiri dari beberapa pulau yaitu Pulau Panjang, Pulau Raburabu, Pulau Samama, Pulau Sangalaki, Pulau Kakaban, Pulau Nabuko, Pulau Maratua dan Pulau Derawan serta beberapa gosong karang seperti gosong Muaras, gosong Pinaka, gosong Buliulin, gosong Masimbung, dan gosong Tababinga.",
            locationImage: "derawan",
            provinsiImage: "Derawano"
        ),
        // Candi Prambanan
        Place(
            name:"Candi Prambanan",
            location: "Yogyakarta, Jawa Tengah",
            info: "Candi Prambanan (Jawa: ꦕꦟ꧀ꦝꦶ​ꦥꦿꦩ꧀ꦧꦤꦤ꧀, translit. Caṇḍi Prambanan) adalah bangunan candi bercorak agama Hindu terbesar di Indonesia yang dibangun pada abad ke-9 Masehi. Candi yang juga disebut sebagai Rara Jonggrang ini dipersembahkan untuk Trimurti, tiga dewa utama Hindu yaitu dewa Brahma sebagai dewa pencipta, dewa Wisnu sebagai dewa pemelihara, dan dewa Siwa sebagai dewa pemusnah. Berdasarkan prasasti Siwagrha nama asli kompleks candi ini adalah Siwagrha (bahasa Sanskerta yang bermakna 'Rumah Siwa'), dan memang di garbagriha (ruang utama) candi ini bersemayam arca Siwa Mahadewa setinggi tiga meter, dikarenakan aliran Syaiwa yang mengutamakan pemujaan dewa Siwa di candi ini.",
            locationImage: "prambanan",
            provinsiImage: "Prambananoo"
        ),
        // Gili Trawangan
        Place(
            name:"Gili Trawangan",
            location: "",
            info: "",
            locationImage: "",
            provinsiImage: "Terawangan"
        ),
        // Toba
        Place(
            name:"Danau Toba",
            location: "",
            info: "",
            locationImage: "",
            provinsiImage: "Toba"
        ),
        // Lawang sewu
        Place(
            name:"Lawang sewu",
            location: "",
            info: "",
            locationImage: "",
            provinsiImage: "Sewu"
        ),
    ]
}
