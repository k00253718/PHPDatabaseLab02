<?php
/* 
 * Topic 02 - Lecture 02 and Exercise 02
 * 
 * Model View Controller Demonstration Application demonstrating Database Interaction
 * 
 * This is the main entry point for this MVC application
 * 
 * @author gerry.guinane
 * 
 * 
 */

//load application configuration
include_once 'config/config.php';
include_once 'config/connection.php';

//load classes required by the application
include_once 'classlib/Controller.php';
include_once 'classlib/Model.php';
include_once 'controllers/MainController.php';
include_once 'models/Home.php';
include_once 'models/UnderConstruction.php';
include_once 'models/Calculator.php';
include_once 'models/Navigation.php';
include_once 'models/Clinton.php';
include_once 'models/Student.php';

//include_once 'models/Session.php';
//include_once 'models/Lecturer.php';
//include_once 'models/User.php';
include_once 'models/Login.php';

//connect to the MySQL Server (with error reporting supression '@')
@$db=new mysqli($DBServer,$DBUser,$DBPass,$DBName);
@$db->query("SET NAMES 'utf8'"); //make sure database connection is set to support UTF8 characterset 
if($db->connect_errno){  //check if there is an error in the connection
    $msg='Error making connection to MySQL Server using MySQLi- check your server is running and you have the correct host IP address.<br>MySQLi Error message: '.$conn->connect_error.'<br>'; 
    exit($msg);  
}



$user=LOGGED_ON_STATE;  //in this example we are just using a variable from the config.php file to contain the logged in state. 

//create an instance of the main controller
$mainController=new MainController($user,$db);

//run the application
$mainController->run();


//close or release any open connections/resources

//Debug information
if(DEBUG_MODE){ //two METHODS of getting debug info from the MainController CLass are illustrated here:
    //Comment out whichever method you dont want to use.
    
    //METHOD 1: Use the built in PHP functions
    //    echo '<pre>';
    //    var_dump($mainController);
    //    echo '</pre>';
    
    //METHOD 2 : Use a method designed for that purpose in the MainController Class
    $mainController->debug();
    
    echo '<pre><h5>USER Class</h5>';
    var_dump($user);
    echo '</pre>';
    
    echo '<pre><h5>$_COOKIE Array</h5>';
    var_dump($_COOKIE);
    echo '</pre>';
    
    
};

