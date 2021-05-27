<?php 
	error_reporting(0);
	include 'db.php';
	$kontak = mysqli_query($conn, "SELECT admin_telp, admin_email, admin_address FROM tb_admin WHERE admin_id = 1");
	$a = mysqli_fetch_object($kontak);
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>BeanbagBengkulu</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header>
		<div class="container">
			<h1><a href="index.php">BeanbagBengkulu</a></h1>
			<ul>
				<li><a href="produk.php">Produk</a></li>
			</ul>
		</div>
	</header>

	<!-- search -->
	<div class="search">
		<div class="container">
			<form action="produk.php">
				<input type="text" name="search" placeholder="Cari Produk" value="<?php echo $_GET['search'] ?>">
				<input type="hidden" name="kat" value="<?php echo $_GET['kat'] ?>">
				<input type="submit" name="cari" value="Cari Produk">
			</form>
		</div>
	</div>

	<!-- beli produk -->
	<div class="section">
    <div class="container">
      <h3>Beli Langsung ke Lokasi</h3>
      <div class="box">
        <h4>Lokasi : Jl KS Tubun no 37, Rt 16, Rw 04 , Kelurahan Jalan Gedang Kecamatan Gading Cempaka. Kota Bengkulu</h4>
        </p>
					<p><a href="https://g.page/beanbag-bengkulu?share" target="_blank">
						<img src="img/lokasi.png" width="200px" ></a>
      </div>
    </div>
  </div>
  <div class="section">
    <div class="container">
      <h3>Hubungi Via WA</h3>
      <div class="box">
        <h4>Wa : 0851 5683 6786</h4>
        </p>
					<p><a href="https://api.whatsapp.com/send?phone=<?php echo $a->admin_telp ?>&text=Hai, saya tertarik dengan produk Anda." target="_blank">
						<img src="img/wa.png" width="200px"></a>
      </div>
    </div>
  </div>

	<!-- footer -->
	<div class="footer">
		<div class="container">
			<h4>Alamat</h4>
			<p><?php echo $a->admin_address ?></p>

			<h4>Email</h4>
			<p><?php echo $a->admin_email ?></p>

			<h4>No. Hp</h4>
			<p><?php echo $a->admin_telp ?></p>
			<small>Copyright &copy; 2020 - BeanbagBengkulu.</small>
		</div>
	</div>
</body>
</html>