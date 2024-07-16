<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Lokasi</title>
    <!-- Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <!-- Bootstrap CSS -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="assets/css/main.css" rel="stylesheet">
    <style>
    #map {
        height: 500px;
        width: 100%;
    }
    </style>
</head>

<body>

    <?php
    include "koneksi.php";
    include 'lib/head.php';
    ?>

    <main id="main">
        <section class="mt-4">
            <div class="container mt-4">
                <div class="row">
                    <div class="col-lg-8">
                        <div id="map"></div>
                    </div>
                    <div class="col-lg-4">
                        <div class="card">
                            <div class="card-body">
                                <!-- Vertical Form -->
                                <form class="row g-3" action="proses_tambah.php" method="post"
                                    enctype="multipart/form-data">
                                    <div class="col-12">
                                        <label for="latlng" class="form-label">Latitude, Longitude</label>
                                        <input type="text" class="form-control" id="latlng" name="latlng"
                                            placeholder="Klik lokasi pada peta">
                                    </div>
                                    <div class="col-12">
                                        <label for="nama" class="form-label">Nama Lokasi</label>
                                        <input type="text" class="form-control" id="nama" name="nama"
                                            placeholder="Masukan nama lokasi">
                                    </div>
                                    <div class="col-12">
                                        <label for="kategori" class="form-label">Kategori</label>
                                        <select class="form-select" name="kategori" id="kategori">
                                            <option selected disabled>Pilih Kategori</option>
                                            <option value="Abeli">Abeli</option>
                                            <option value="Baruga">Baruga</option>
                                            <option value="Kadia">Kadia</option>
                                            <option value="Kambu">Kambu</option>
                                            <option value="Kendari">Kendari</option>
                                            <option value="Kendari Barat">Kendari Barat</option>
                                            <option value="Mandonga">Mandonga</option>
                                            <option value="Nambo">Nambo</option>
                                            <option value="Poasia">Poasia</option>
                                            <option value="Puuwatu">Puuwatu</option>
                                            <option value="Wuawua">Wuawua</option>
                                        </select>
                                    </div>
                                    <div class="col-12">
                                        <label for="keterangan" class="form-label">Keterangan</label>
                                        <input type="text" class="form-control" id="keterangan" name="keterangan"
                                            placeholder="Masukan Keterangan">
                                    </div>
                                    <div class="col-12">
                                        <label for="gambar" class="form-label">Gambar</label>
                                        <input type="file" class="form-control" id="gambar" name="gambar">
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-success">Tambah</button>
                                        <a href="lokasi.php" type="reset" class="btn btn-secondary">Kembali</a>
                                    </div>
                                </form><!-- Vertical Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main><!-- End #main -->

    <?php
    include 'lib/footer.php';
    ?>

    <!-- Leaflet JS -->
    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script>
    var map = L.map('map').setView([-3.999087659951416, 122.51884325359129], 15);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    var popup = L.popup();

    function onMapClick(e) {
        var latlng = e.latlng;
        popup
            .setLatLng(latlng)
            .setContent("You clicked the map at " + latlng.toString())
            .openOn(map);

        // Set the value of the latlng input
        document.getElementById('latlng').value = latlng.lat + ", " + latlng.lng;
    }

    map.on('click', onMapClick);

    <?php 
    $tampil = mysqli_query($koneksi, "SELECT * FROM lokasi");
    while($hasil = mysqli_fetch_array($tampil)){
    ?>
    var marker = L.marker([<?php echo $hasil['lat_lng'] ?>]).addTo(map);

    marker.bindPopup(
        "<b><?php echo $hasil['nama'] ?></b><br><?php echo $hasil['lat_lng'] ?><br>Kategori: <?php echo $hasil['kategori'] ?><br>Keterangan: <?php echo $hasil['keterangan'] ?><br><img src='assets/img/<?php echo $hasil['gambar'] ?>' alt='' width='150px'>"
    );
    <?php
    }
    ?>
    </script>

    <!-- Bootstrap JS -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>