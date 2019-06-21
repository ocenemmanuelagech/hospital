<?php
/**
 * Presets class
 * generates some presets for different portions of the site.
 */
 
class presets {
  
  var $active = '';

  /**
   * generates the items inside the top navbar
   */
  function GenerateNavbar() {
      global $set, $user;
      $var = array();
      $var[] = array("item" ,
                      array("href" => $set->url,
                            "name" => "Home",
                            "class" => $this->isActive("home")),
                      "id" => "home");


      $var[] = array("item",
                      array("href" => $set->url."/users_list.php",
                            "name" => "User List",
                            "class" => $this->isActive("userslist")),
                      "id" => "userslist");

      $var[] = array("item",
                      array("href" => $set->url."/contact.php",
                            "name" => "Contact",
                            "class" => $this->isActive("contact")),
                      "id" => "contact");
//this lower code is for the drop down of the  patient
      if($user->group->type == 1)
      $var[] = array("dropdown",
                      array(  0 => array("href" => $set->url."/pat",
                                       "name" => "Apointments",
                                       "class" => 0),

                              1 => array("href" => $set->url."/pat",
                                         "name" => "Personal Medical records",
                                         "class" => 0),
                          ),
                      "class" => 0,
                      "style" => 0,
                      "name" => "Extra",
                      "id" => "extra");  
        /////////////////////////////////////////
       //this lower code is for the drop down of the  Nurse
      if($user->group->type == 2)
      $var[] = array("dropdown",
                      array(  0 => array("href" => "http://127.0.0.1",
                                       "name" => "Check Apoitments",
                                       "class" => 0),

                              1 => array("href" => "http://127.0.0.1",
                                         "name" => "Select a Patient",
                                         "class" => 0),
                          ),
                      "class" => 0,
                      "style" => 0,
                      "name" => "Extra",
                      "id" => "extra");  
                      //////////////////////////////////////// 

                      //this lower code is for the drop down of the  Doctor
      if($user->group->type == 5)
      $var[] = array("dropdown",
                      array(  0 => array("href" => "http://localhost/hospital/doc/apoint.php.php",
                                       "name" => "Check all Apointments",
                                       "class" => 0),

                              1 => array("href" => "http://localhost/hospital/doc/select.php.php",
                                         "name" => "Check Specific Apointments ",
                                         "class" => 0),
                          ),
                      "class" => 0,
                      "style" => 0,
                      "name" => "Extra",
                      "id" => "extra");   

                      ///////////////////////////////////////  
      if($user->group->type == 3) // we make it visible for admins only
      $var[] = array("item",
                      array("href" => $set->url."/admin",
                            "name" => "Admin Panel",
                            "class" => $this->isActive("adminpanel")),
                      "id" => "adminpanel");



      // keep this always the last one or edit hrader.php:8
      $var[] = array("dropdown",
                      array(  array("href" => $set->url."/profile.php?u=".$user->data->userid,
                                       "name" => "<i class=\"icon-user\"></i> My Profile",
                                       "class" => 0),
                              array("href" => $set->url."/user.php",
                                       "name" => "<i class=\"icon-cog\"></i> Account settings",
                                       "class" => 0),
                              array("href" => $set->url."/privacy.php",
                                       "name" => "<i class=\"icon-lock\"></i> Privacy settings",
                                       "class" => 0),

                              array("href" => $set->url."/logout.php",
                                         "name" => "LogOut",
                                         "class" => 0),
                          ),
                      "class" => 0,
                      "style" => 0,
                      "name" => $user->filter->username,
                      "id" => "user");



          

      return $var;
  }

  function setActive($id) {
    $this->active = $id;
  }

  function isActive($id) {
    if($id == $this->active)
      return "active";
    return 0;
  }

}
