<html lang="de">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="style.css">
		<title>Trans Exotica</title>
	</head>
	<body>
		<header>
			<h1>Trans Exotica</h1>
			<h2>europaweite Zootiertransporte</h2>
		</header>
		<nav>
			<ul>
				<li><a href="about.html">Über uns</a></li>
				<li><a href="storage.php">Kistenlager</a></li>
				<li><a href="imprint.html#contact">Kontakt</a></li>
				<li style="margin-left: auto"><a href="imprint.html">Impressum</a></li>
			</ul>
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