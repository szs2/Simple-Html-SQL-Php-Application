<html>    
    <head>        
        <title>New employee confirmation</title>
    </head>    
</html>
    
    <?php

$pagename="New Employee Confirmation";
echo "<title>".$pagename."</title>";
echo "<h2>".$pagename."</h2>";

$w1698415_EmployeeID = filter_input(INPUT_POST,'w1698415_EmployeeID');
$w1698415_EmpName = filter_input(INPUT_POST,'w1698415_EmpName');
$w1698415_EmpPosition = filter_input(INPUT_POST,'w1698415_EmpPosition');
$w1698415_EmpEmail = filter_input(INPUT_POST,'w1698415_EmpEmail');
$w1698415_CompCode = filter_input(INPUT_POST,'w1698415_CompCode');


     $host = "localhost";
    $dbUsername = "root";
    $dbPassword ="";
    $dbname = "w1698415";
    

    
     $conn=mysqli_connect($host,$dbUsername, $dbPassword, $dbname)
     or die("Access denied");
     $res=mysqli_select_db($conn,"w1698415");
     if(!$res){
      echo"Connetion Faliur";
     }
     elseif(empty($w1698415_EmployeeID) or empty($w1698415_EmpName) or empty($w1698415_EmpPosition) or empty($w1698415_EmpEmail) or empty($w1698415_CompCode) ){
     echo "Enter all fields";     
    }elseif (!filter_var($w1698415_EmpEmail, FILTER_VALIDATE_EMAIL)) {
            echo "Enter valid Email Address"; 
    }elseif (!filter_var($w1698415_EmployeeID, FILTER_VALIDATE_INT)) {
            echo "Enter Number as Employee Id"; 
    }elseif (!filter_var($w1698415_CompCode, FILTER_VALIDATE_INT)) {
            echo "Enter Number as Company code"; 
    }elseif ($conn) {  
    
         $INSERT ="insert into w1698415_employee (w1698415_empId,w1698415_empFullName,w1698415_empposition,W1698415_empEmail,w1698415_compCode) values('$w1698415_EmployeeID','$w1698415_EmpName','$w1698415_EmpPosition','$w1698415_EmpEmail','$w1698415_CompCode')";
         $rslt=mysqli_query($conn,$res);
             echo "<p>Your new employee has been added successfully";
             
             echo "<p>Added employee id: ".$w1698415_EmployeeID;
             echo "<br>Added full name: ".$w1698415_EmpName;
	     echo "<br>Added position: ".$w1698415_EmpPosition;
	     echo "<br>Added email: ".$w1698415_EmpEmail;
	     echo "<br>Added company code: ".$w1698415_CompCode;
	  
     }
     
 
 ?>
