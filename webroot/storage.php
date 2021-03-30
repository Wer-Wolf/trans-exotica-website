<html lang="de">
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="style.css">
		<title>Trans Exotica</title>
	</head>
	<body>
		<header>
			<h1>Trans Exotica</h1>
			<h2>europaweite Zootiertransporte</h2>
		</header>
		<nav>
			<a href="about.html">Über uns</a>
			<a href="storage.php">Kistenlager</a>
			<a href="imprint.html#contact">Kontakt</a>
			<a href="imprint.html" style="float:right">Impressum</a>
		</nav>
		<div class="content">
			<section>
				<h1>Kistenlager</h1>
				<?php
					try {
						$pdo = new PDO('mysql:host=localhost;dbname=trans-exotica', '', '');  // test db
					} catch(PDOException $Exception) {
						die(
							"<p>Verbindung zur Datenbank gescheitert &#x2639;</p>
							<p>Schreiben sie uns am besten eine Mail.</p>"
						);
					}
					if(isset($_GET["bid"])) {
						/*Display specific box data*/
						$BID = $_GET["bid"];
					} else {
						/*Display box list*/
					}

				?>
			</section>
		</div>
		<footer>
			Trans-Exotica Uwe Wolf &nbsp&nbsp|&nbsp&nbsp +49 177 381 09 19 &nbsp&nbsp|&nbsp&nbsp info@trans-exotica.de
		</footer>
	</body>
</html>