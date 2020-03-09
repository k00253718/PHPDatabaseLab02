<?php
/**
 * Class: Navigation
 * This class is used to generate navigation menu items in an an array for the view.
 * 
 * It uses the logged in status and currently selected pageID to determine which items 
 * are included in the menu for that specific page.
 *
 * @author gerry.guinane
 * 
 */

class Navigation extends Model{
	//class properties
        private $pageID;   //currently selected page
        private $menuNav;  //array of menu items       
	
	//constructor
	function __construct($loggedin,$pageID) {   
            parent::__construct($loggedin);
            $this->pageID=$pageID;
            $this->setmenuNav();

	}  //end METHOD constructor
      
        //setter methods
        public function setmenuNav(){//set the menu items depending on the users selected page ID
            if($this->loggedin){  //if user is logged in     
                switch ($this->pageID) {
                    case "home":
                        //$this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;

                    case "messages":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        //$this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    
                    case "studentQuery":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        //$this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    
                    case "modules":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        //$this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    
                    case "grades":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        //$this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    
                                                            
                    
                    
                    
                    case "account":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        //$this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    case "calculator":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        //$this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                    
                    case "logout":  //DUMMY CASE - this case is not actually needed!!
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=register">Register</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=login">Login</a>';
                        break;

                    default:
                        //$this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=messages">My Messages</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=studentQuery">Student Query</a>';
                        $this->menuNav[3]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=modules">Modules</a>';
                        $this->menuNav[4]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=grades">Grades</a>';  
                        $this->menuNav[5]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=account">My Account</a>';
                        $this->menuNav[6]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=calculator">Calculator</a>';
                        $this->menuNav[7]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=logout">Log Out</a>';
                        break;
                
                }//end switch
            }
            else{ //user is NOT logged in
                
                  switch ($this->pageID) {
                    case "home":
                        //$this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=register">Register</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=login">Login</a>';
                        break;
                    case "register":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        //$this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=register">Register</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=login">Login</a>';
                        break;         
                    case "login":
                        $this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=register">Register</a>';
                        //$this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=login">Login</a>';
                        break;  
                    default:
                        //$this->menuNav[0]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=home">Home</a>';
                        $this->menuNav[1]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=register">Register</a>';
                        $this->menuNav[2]='<a href="'.$_SERVER['PHP_SELF'].'?pageID=login">Login</a>';
                        break;
            }
        }   
        } //end METHOD - set the menu items depending on the users selected page ID
        
        //getter methods
        public function getMenuNav(){return $this->menuNav;}    //end METHOD - get the navigation menu string   
  
}//end class
        