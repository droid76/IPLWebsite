<?php

	header('Content-Type:text/event-stream');
    header('Cache-Control: no-cache');
	//header("Connection: keep-alive");
	ob_start();
	//ob_flush();
	//flush();
	$count = 1;
	$old = filemtime("scores.txt");
	while(true)
	{
		$new = filemtime("scores.txt");
		if($new > $old)
		{
			$st = file_get_contents("scores.txt");
			echo "event:newscore\n";
			echo "retry:1000\n";
			echo "data:$st\n\n";
			ob_flush();
			flush();
			//echo "<script>console.log('afasf')</script>"
			$count++;
			$old = $new;
		}
		clearstatcache();
		/*
		$contents = "abc";
		echo "event:newscore\n";
		echo "retry:1000\n";
		echo "data:$contents\n";
		echo PHP_EOL;
		ob_flush();
		flush();
		*/
		//sleep(3);
	}

?>
