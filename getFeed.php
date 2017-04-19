<?php
	header("Content-type:text/xml");
	$news = file_get_contents("resources/feed.xml");
	echo $news;
?>
