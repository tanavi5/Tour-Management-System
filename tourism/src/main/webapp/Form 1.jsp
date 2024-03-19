<!DOCTYPE html>
<html>
<head>
<script>
function validateForm() {
  let x = document.forms["myForm"]["fname"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
}
 {
  let x = document.forms["myForm"]["frollno"].value;
  if (x == "") {
    alert("Roll No must be filled out");
    return false;
  }
}
</script>
</head>
<body>

<h2>JavaScript Validation</h2>

<form name="myForm" action="/action_page.php" onsubmit="return validateForm()" method="post">
  Name: <input type="text" name="fname">
  Roll No: <input type="text" name="rollno">
  <input type="submit" value="Submit">

</form>

</body>
</html>
