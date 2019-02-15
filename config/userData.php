<?php

class userData {
   protected $USERNAME = "";
   protected $FOTO = "";
   protected $EMAIL = "";
   protected $FULLNAME = "";
   protected $NIP = "";
   protected $USER_LEVEL = "";
   protected $JABATAN = "";
   protected $USERNAME_TARGET = "";
   protected $LAST_LOGIN = "";

   function get_username() {
       return $this->USERNAME;
   }
   function set_username($username) {
       $this->USERNAME = $username;
   }
   function get_fullname() {
       return $this->FULLNAME;
   }
   function set_fullname($fullname) {
       $this->FULLNAME = $fullname;
   }
   function get_email() {
       return $this->EMAIL;
   }
   function set_email($email) {
       $this->EMAIL = $email;
   }
   function get_foto() {
       return $this->FOTO;
   }
   function set_foto($foto) {
       $this->FOTO = $foto;
   }
   function get_nip() {
       return $this->NIP;
   }
   function set_nip($nip) {
       $this->NIP = $nip;
   }
   function get_jabatan() {
       return $this->JABATAN;
   }
   function set_jabatan($jabatan) {
       $this->JABATAN = $jabatan;
   }
   function get_userLevel() {
       return $this->USER_LEVEL;
   }
   function set_userLevel($ulevel) {
       $this->USER_LEVEL = $ulevel;
   }
   function get_usernameTarget() {
       return $this->USERNAME_TARGET;
   }
   function set_usernameTarget($utarget) {
       $this->USERNAME_TARGET = $utarget;
   }
   function get_lastLogin() {
       return $this->LAST_LOGIN;
   }
   function set_lastLogin($ll) {
       $this->LAST_LOGIN = $ll;
   }

}
?>
