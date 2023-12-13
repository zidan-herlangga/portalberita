<?php
include("koneksi.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lintas Berita</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <center>
        <img src="src/img/banner.jpg" class="banner">
    </center>

    <!-- Tabel Menu -->
    <table border="1" align="center" class="menu-atas">
        <tr>
            <td><a href="#">Home</a></td>
            <td><a href="#">Berita Politik</a></td>
            <td><a href="#">Berita Ekonomi</a></td>
            <td><a href="#">Berita Internasional</a></td>
            <td><a href="#">Berita Olahraga</a></td>
            <td><a href="#">Berita Teknologi</a></td>
            <td><a href="#">Berita Hiburan</a></td>
        </tr>
    </table>

    <!-- Tabel Isi Berita -->
    <table border="1" align="center" class="tabel-isi">
        <tr>
            <td align="top" width="300">
                <div class="judul" align="center">
                    Headline News!!!
                </div>

                <!-- Untuk menampilkan judul headline -->
                <div class="pinggir">
                    <ul>
					<?php
						$jumlah_tampil = 5;
						$head = mysqli_query($conn, "SELECT * FROM isi_berita ORDER BY tanggal DESC LIMIT $jumlah_tampil");

						while ($headline = mysqli_fetch_array($head)) {
							echo "<li><a href='index.php?menu=detail_headline&id=$headline[id_berita]'>$headline[judul]</a><br><font size='2px' color='gray'>$headline[tanggal]</font></li>";
						}
					?>
                    </ul>
                </div>
			</td>
			<td valign="center" align="center">
				<!-- Fungsi pemanggilan halaman -->
				<?php
					if(isset($_GET["menu"])){
						$menu = $_GET["menu"];
						if($menu == "home"){
							include "headline.php";
						}
						else {
							include "headline.php";
						}
					}
				?>
			</td>
        </tr>
    </table>
</body>
</html>