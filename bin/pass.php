<?php
$chars="!;:()_+=-~<>,.[]{}1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"; 
$max=15; 
$size=StrLen($chars)-1; 
$password=null; 
while($max--) 
    $password.=$chars[rand(0,$size)]; 
echo $password; 
?>