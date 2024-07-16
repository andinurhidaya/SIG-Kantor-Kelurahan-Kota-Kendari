<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="path/to/bootstrap.css">
    <link rel="stylesheet" href="path/to/leaflet.css">
    <script src="path/to/leaflet.js"></script>
</head>

<body>
    <?php
        include "koneksi.php";
        include 'lib/head.php';
    ?>

    <main class="main">
        <section>
            <div class="container mt-5">
                <div class="card">
                    <div class="card-body">
                        <a href="lokasi_tambah.php" type="button" class="btn btn-success">Tambah Data</a>
                        <!-- Table with stripped rows -->
                        <table class="table datatable">
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Latitude, Longitude</th>
                                    <th>Nama Lokasi</th>
                                    <th>Kategori</th>
                                    <th>Keterangan</th>
                                    <th>Gambar</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                $no = 1;
                                $tampil = mysqli_query($koneksi, "SELECT * FROM lokasi");
                                while ($hasil = mysqli_fetch_array($tampil)) {
                                ?>
                                <tr>
                                    <td><?php echo $no; ?></td>
                                    <td><?php echo $hasil['lat_lng']; ?></td>
                                    <td><?php echo $hasil['nama']; ?></td>
                                    <td><?php echo $hasil['kategori']; ?></td>
                                    <td><?php echo $hasil['keterangan']; ?></td>
                                    <td><img src="assets/img/<?php echo $hasil['gambar'] ?>" alt="Gambar" width="150px">
                                    </td>
                                    <td>
                                        <a href="lokasi_edit.php?id=<?php echo $hasil['id'] ?>" type="button"
                                            class="btn btn-success"><i class="bi bi-pencil-square"></i></a>
                                        <a href="proses_hapus.php?id=<?php echo $hasil['id'] ?>" type="button"
                                            class="btn btn-danger"><i class="bi bi-trash"></i></a>
                                    </td>
                                </tr>
                                <?php
                                    $no++;
                                }
                                ?>
                            </tbody>
                        </table>
                        <!-- End Table with stripped rows -->
                    </div>
                </div>
            </div>
        </section>
    </main>

    <?php include 'lib/footer.php'; ?>

    <script>
    var map = L.map('map').setView([-3.999087659951416, 122.51884325359129], 15);

    L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
    }).addTo(map);

    var popup = L.popup();

    function onMapClick(e) {
        popup
            .setLatLng(e.latlng)
            .setContent("You clicked the map at " + e.latlng.toString())
            .openOn(map);
    }

    map.on('click', onMapClick);

    <?php
        if (isset($_POST['cari'])) {
            $keyword = $_POST['keyword'];
            $tampil = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE nama LIKE '%$keyword%' OR kategori LIKE '%$keyword%' OR keterangan LIKE '%$keyword%'");
        } else {
            $tampil = mysqli_query($koneksi, "SELECT * FROM lokasi");
        }
        while ($hasil = mysqli_fetch_array($tampil)) {
        ?>
    var marker = L.marker([<?php echo $hasil['lat_lng']; ?>]).addTo(map);

    marker.bindPopup(
        "<b><?php echo $hasil['nama']; ?></b><br><?php echo $hasil['lat_lng']; ?><br>Kategori: <?php echo $hasil['kategori']; ?><br>Keterangan: <?php echo $hasil['keterangan']; ?><br><img src='assets/img/<?php echo $hasil['gambar']; ?>' alt='' width='150px'>"
    ).openPopup();
    <?php
        }
        ?>
    </script>
</body>

</html>