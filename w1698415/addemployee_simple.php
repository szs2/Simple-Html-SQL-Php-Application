
<?php


$pagename="Add a New Employee";
echo "<title>".$pagename."</title>";
echo "<h2>".$pagename."</h2>";

echo "<body>";

echo "<hr>Fill the form below to add a new employee";


echo "<form method=post action=getemployee.php>" ;

echo "<table border=0 cellspacing=20>";

echo "<tr><td width=160>*Employee ID </td>";
echo "<td><input type=text name=w1698415_EmployeeID  size=35></td></tr>";

echo "<tr><td width=160>*Full Name </td>";
echo "<td><input type=text name=w1698415_EmpName size=35 ></td></tr>";

echo "<tr><td width=160>*Position </td>";
echo "<td><input type=text name=w1698415_EmpPosition size=35 ></td></tr>";

echo "<tr><td width=160>*Email </td>";
echo "<td><input type=text name=w1698415_EmpEmail size=35 ></td></tr>";

echo "<tr><td width=160>*Company Code </td>";
echo "<td><input type=text name=w1698415_CompCode size=35 ></td></tr>";


echo "<tr><td><input type=submit value='Add Employee' name='btn'></td>";
echo "<td><input type=reset value='Clear Form'></td></tr>";
echo "</table>";
echo "</form>" ;

echo "</body>";


?>
