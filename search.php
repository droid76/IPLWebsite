<?php

  extract($_GET);
  $file=fopen("players.txt","r");
  $r=array();
  while(!feof($file)){
    
    $line=trim(fgets($file));
    
    if(strpos(strtolower($line),strtolower($term))!==false)
    {
      $r[]=$line;
      
    }
    
    
  }
  
  
  echo (json_encode($r));
  
  
?>  
  