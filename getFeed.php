<?php
	header("Content-type:text/xml");
	$news = file_get_contents("feed.xml");
	echo $news;
?>
