<?php
include "inc/init.php";

$page->title = "Welcome to ". $set->site_name;//this line print the site name

$presets->setActive("home"); // we highlith the home link


include 'header.php';


echo "
<div class=\"container\">

<div class=\"hero-unit\">
<center>
    <h1>Welcome to MHCMS </h1>
</center>
    ";
if(!$user->islg()) {
    echo "
    <center>
    <p>
        <a class=\"btn btn-primary btn-large\" href=\"$set->url/register.php\">Sign Up</a>
        <a class=\"btn btn-large\" href=\"$set->url/login.php\">Login</a>
    </p>
    </center>
    ";

}

echo "</div></div> <!-- /container -->";
include 'footer.php';