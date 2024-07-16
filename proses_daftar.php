<?php
include 'koneksi.php';

if (isset($_POST['btnDaftar'])) {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_BCRYPT);

    // Periksa apakah username sudah ada dalam database
    $cek_username = mysqli_query($koneksi, "SELECT * FROM user WHERE username = '$username'");
    if (mysqli_num_rows($cek_username) > 0) {
        // Username sudah digunakan, tampilkan pesan kesalahan
        echo "<script>
            alert('Username sudah digunakan. Silakan gunakan username lain.');
            window.location.href = 'daftar.php';
            </script>";
        exit;
    }

    // Jika username belum digunakan, lakukan proses pendaftaran
    $query = mysqli_query($koneksi, "INSERT INTO user (username, password) VALUES ('$username', '$password')");

    if ($query) {
        // Pendaftaran berhasil, arahkan ke halaman login
        echo "<script>
            alert('Daftar berhasil. Silakan login.');
            window.location.href = 'login.php';
            </script>";
    } else {
        // Pendaftaran gagal, tampilkan pesan kesalahan
        echo "<script>
            alert('Daftar gagal. Silakan coba lagi.');
            window.location.href = 'daftar.php';
            </script>";
    }
}
?>