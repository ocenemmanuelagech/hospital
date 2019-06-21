<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.dropdown-submenu {
    position: relative;
}

.dropdown-submenu .dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -1px;
}
</style>
</head>
    
<body>
   
<div class="container">

<!--Main button Begin-->                                          
  <div class="dropdown">
   <a href="creatapp.php">  <button class="btn btn-default dropdown-toggle" type="button" >Create Apointment
       <span class="caret"></span></button></a>
   
<!--Main button End-->
<!--Main button Begin-->                                       
  <div class="dropdown">
   <a href="showapp.php">  <button class="btn btn-default dropdown-toggle" type="button">Show Apointment
        <span class="caret"></span></button></a>

      
      
      
      
      
      
      
      
      
      
      
      
      <div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Cancel Apointment
    <span class="caret"></span></button>
  
</div>
      
      
      


<script>
$(document).ready(function(){
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
</script>

</body>
</html>
