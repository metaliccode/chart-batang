<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<head>
<title>Grafik Penduduk Indonesia</title>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/highcharts.js" type="text/javascript"></script>
<script src="js/exporting.js" type="text/javascript"></script>
<script type="text/javascript">
	var chart1; // globally available
$(document).ready(function() {
      chart1 = new Highcharts.Chart({
         chart: {
            renderTo: 'container',
            type: 'column'
         },   
         title: {
            text: 'Data Grafik Hasil Pemilihan Calon Ketua HIMATIF '
         },
         xAxis: {
            categories: ['Nama Kandidat']
         },
         yAxis: {
            title: {
               text: 'Jumlah Suara'
            }
         },
              series:             
            [
<?php      
// file koneksi php
/*$server = "localhost";
$username = "root";
$password = "";
$database = "db_evote";
mysql_connect($server,$username,$password) or die("Koneksi gagal");
mysql_select_db($database) or die("Database tidak bisa dibuka");
$sql   = "SELECT * from tb_kadidat"; // file untuk mengakses ke tabel database
$query = mysql_query( $sql ) or die(mysql_error());         
*/
include ('kon.php');
$sql = "SELECT * FROM tb_kadidat";
$query = mysqli_query($koneksi, $sql);
while($ambil = mysqli_fetch_array($query)){
	$nama_kandidat=$ambil['nama_kandidat'];
	$sql_jumlah   = "SELECT * from tb_kadidat where nama_kandidat='$nama_kandidat'";        
	$query_jumlah = mysqli_query($koneksi, $sql_jumlah);
	while( $data = mysqli_fetch_array( $query_jumlah ) ){
	   $jumlahx = $data['jml_suara'];                 
	  }             
	  
	  ?>
	  {
		  name: '<?php echo $nama_kandidat; ?>',
		  data: [<?php echo $jumlahx; ?>]
	  },
	  <?php } ?>
]
});
});	
</script>
</head>
<body>
<!-- fungsi yang di tampilkan dibrowser  -->
<div id="container" style="min-width: 200px; height: 400px; margin: 0 auto"></div>

</body>
</html>
