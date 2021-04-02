<!DOCTYPE html>
<html lang="de">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="style.css">
		<title>Trans Exotica</title>
	</head>
	<body>
		<header>
			<p><b>Trans Exotica</b></p>
			<p>europaweite Zootiertransporte</p>
		</header>
		<nav>
			<ul>
				<li><a href="about.html">Über uns</a></li>
				<li><a href="storage.php">Kistenlager</a></li>
				<li><a href="imprint.html#contact">Kontakt</a></li>
				<li style="margin-left: auto"><a href="imprint.html">Impressum</a></li>
			</ul>
		</nav>
		<main>
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
		</main>
		<footer>
			<ul>
				<li><span>&copy; Trans Exotica Uwe Wolf</span></li>
				<li><span>+49 177 381 09 19</span></li>
				<li><span>info@<span id="spam">continental</span>trans-exotica.de</span></li>
			</ul>
		</footer>
	</body>
</html>