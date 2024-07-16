<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diagram Batang</title>
    <link rel="stylesheet" href="path/to/your/css/file.css"> <!-- Link ke file CSS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <style>
    body {
        margin: 0;
        background-color: #f0f8ff;
        /* Latar belakang halaman yang lembut */
    }

    .navbar {
        width: 100%;
        background-color: #333;
        overflow: hidden;
        position: fixed;
        top: 0;
        z-index: 1000;
    }

    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin-top: 0px;
        padding-top: 50px;
        /* Tambahkan padding untuk mengimbangi navbar yang fixed */
    }

    .canvas-container {
        width: 80%;
        max-width: 800px;
        /* Perbesar ukuran maksimal */
        background-color: #ffffff;
        /* Warna latar belakang canvas */
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    #myChart {
        width: 100% !important;
        height: 400px !important;
        /* Perbesar ukuran tinggi canvas */
    }
    </style>
</head>

<body>
    <?php include 'lib/head.php'; ?>

    <div class="container">
        <div class="canvas-container">
            <?php
            include 'koneksi.php'; // Pastikan file koneksi disertakan
            $abeli = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Abeli'");
            $jmlabeli = mysqli_num_rows($abeli);
            $baruga = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Baruga'");
            $jmlbaruga = mysqli_num_rows($baruga);
            $kadia = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Kadia'");
            $jmlkadia = mysqli_num_rows($kadia);
            $kambu = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Kambu'");
            $jmlkambu = mysqli_num_rows($kambu);
            $kendari = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Kendari'");
            $jmlkendari = mysqli_num_rows($kendari);
            $kendari_barat = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Kendari Barat'");
            $jmlkendari_barat = mysqli_num_rows($kendari_barat);
            $mandonga = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Mandonga'");
            $jmlmandonga = mysqli_num_rows($mandonga);
            $nambo = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Nambo'");
            $jmlnambo = mysqli_num_rows($nambo);
            $poasia = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Poasia'");
            $jmlpoasia = mysqli_num_rows($poasia);
            $puuwatu = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Puuwatu'");
            $jmlpuuwatu = mysqli_num_rows($puuwatu);
            $wuawua = mysqli_query($koneksi, "SELECT * FROM lokasi WHERE kategori = 'Wuawua'");
            $jmlwuawua = mysqli_num_rows($wuawua);
            ?>

            <canvas id="myChart"></canvas>

            <script>
            var xValues = ["Abeli", "Baruga", "Kadia", "Kambu", "Kendari", "Kendari Barat", "Mandonga", "Nambo",
                "Poasia", "Puuwatu", "Wuawua"
            ];
            var yValues = [
                <?php echo $jmlabeli ?>,
                <?php echo $jmlbaruga ?>,
                <?php echo $jmlkadia ?>,
                <?php echo $jmlkambu ?>,
                <?php echo $jmlkendari ?>,
                <?php echo $jmlkendari_barat ?>,
                <?php echo $jmlmandonga ?>,
                <?php echo $jmlnambo ?>,
                <?php echo $jmlpoasia ?>,
                <?php echo $jmlpuuwatu ?>,
                <?php echo $jmlwuawua ?>
            ];
            var barColors = ["#FF6384", "#36A2EB", "#FFCE56", "#4BC0C0", "#9966FF", "#FF6384", "#36A2EB", "#FFCE56",
                "#4BC0C0", "#9966FF", "#FF6384"
            ];
            var borderColors = ["#FF6384B0", "#36A2EBB0", "#FFCE56B0", "#4BC0C0B0", "#9966FFB0", "#FF6384B0",
                "#36A2EBB0", "#FFCE56B0", "#4BC0C0B0", "#9966FFB0", "#FF6384B0"
            ];

            new Chart("myChart", {
                type: "bar",
                data: {
                    labels: xValues,
                    datasets: [{
                        backgroundColor: barColors,
                        borderColor: borderColors,
                        borderWidth: 2,
                        data: yValues
                    }]
                },
                options: {
                    legend: {
                        display: false
                    },
                    title: {
                        display: true,
                        text: "DIAGRAM BATANG",
                        fontSize: 18,
                        fontColor: '#333'
                    },
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true
                            }
                        }]
                    }
                }
            });
            </script>
        </div>
    </div>

</body>

</html>