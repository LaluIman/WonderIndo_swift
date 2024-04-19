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
            provinsiImage: "Prambanano"
        ),
        // Gili Trawangan
        Place(
            name:"Gili Trawangan",
            location: "Lombok Utara (KLU) Nusa Tenggara Barat[",
            info: "Gili Trawangan terletak di Desa Gili Indah, Kecamatan Pemenang, Kabupaten Lombok Utara (KLU) Nusa Tenggara Barat[1]. Trawangan termasuk salah satu kawasan strategis provinsi (KSP), bersamaan dengan Gili Meno dan Gili Air, atau yang disebut juga Pesona Gili Tramena (Trawangan, Meno dan Air)[2]. Gili Trawangan adalah yang terbesar dari ketiga pulau kecil atau gili yang terletak di sebelah barat laut Lombok. Trawangan juga satu-satunya gili yang ketinggiannya di atas permukaan laut cukup signifikan. Dengan panjang 3 km dan lebar 2 km, Gili Trawangan berpopulasi sekitar 2.089 jiwa dengan rasio laki-laki dan perempuan adalah 1,08[3]. Di antara ketiga gili tersebut, Trawangan memiliki fasilitas untuk wisatawan yang paling beragam; kedai 'Tîr na Nôg/' mengklaim bahwa Trawangan adalah pulau terkecil di dunia yang ada bar Irlandia-nya. Bagian paling padat penduduk adalah sebelah timur pulau ini.Pada tahun 2023 juga beach club yang terkenal yaitu Rabbit jump.",
            locationImage: "giltw",
            provinsiImage: "Terawangan"
        ),
        // Toba
        Place(
            name:"Danau Toba",
            location: "Sumatra Utara",
            info: """
            Danau Toba (Batak Toba: Surat Batak: ᯖᯀᯬ ᯖᯬᯅ, translit. Tao Toba) adalah danau alami berukuran besar di Indonesia yang terletak di kaldera gunung supervulkan. Danau ini memiliki panjang 100 kilometer (62 mil), lebar 30 kilometer (19 mi), dan kedalaman 508 meter (1.667 ft). Danau ini terletak di tengah pulau Sumatra bagian utara dengan ketinggian permukaan sekitar 900 meter (2.953 ft). Danau ini membentang vdari 2.88°N 98.52°E sampai 2.35°N 99.1°E. Danau Toba merupakan adalah danau terbesar di Indonesia sekaligus danau vulkanik terbesar di dunia.[1]
            Danau Toba terbentuk sebagai akibat dari letusan gunung berapi super masif berkekuatan VEI 8 sekitar 69.000 sampai 77.000 tahun yang lalu[2][3][4] yang memicu perubahan iklim global. Metode penanggalan terkini yang berakurat menetapkan letusan tersebut terjadi sekitar 74.000 tahun yang lalu.[5] Letusan ini merupakan letusan eksplosif terbesar di Bumi dalam 25 juta tahun terakhir. Menurut teori bencana Toba, letusan ini berdampak besar bagi populasi manusia di seluruh dunia; dampak letusan menewaskan sebagian besar manusia yang hidup waktu itu dan diyakini menyebabkan penyusutan populasi di Afrika Timur-Tengah dan India sehingga memengaruhi genetika populasi manusia di seluruh dunia sampai sekarang.[6]
            """,
            locationImage: "daba",
            provinsiImage: "Toba"
        ),
        // Lawang sewu
        Place(
            name:"Lawang sewu",
            location: "Semarang, Jalan Pemuda",
            info: "Lawang Sewu (Belanda: Het administratiegebouw van de Nederlandsch-Indische Spoorweg-Maatschappij, N.V. te Samarang) (Bahasa Jawa: ꧋ꦭꦮꦁꦱꦺꦮꦸ artinya Seribu Pintu) adalah bekas gedung perkantoran di Semarang, Jawa Tengah, Indonesia. Ini merupakan kantor pusat Perusahaan Kereta Api Hindia Belanda (Nederlandsch-Indische Spoorweg Maatschappij/NIS) dan dimiliki oleh perusahaan kereta api nasional Kereta Api Indonesia (KAI). Pendahulunya, Djawatan Kereta Api, menyita semua infrastruktur transportasi kereta api dan kantor-kantornya dari penjajahan Belanda. Saat ini, bangunan ini digunakan sebagai museum dan galeri kereta api, yang saat ini dioperasikan oleh Unit Heritage KAI dan anak perusahaannya, KAI Wisata.[1][2]",
            locationImage: "Lawang",
            provinsiImage: "Sewu"
        ),
    ]
}
