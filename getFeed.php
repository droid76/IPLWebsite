<?php
	header("Content-type:text/xml");
<<<<<<< HEAD
	$news = file_get_contents("resources/feed.xml");
=======
	$news = file_get_contents("feed.xml");
>>>>>>> 1218eabd41f761519da32c5285655449daefe39d
	echo $news;
?>
