<?php
session_start();
if($_SERVER["REQUEST_METHOD"]=="POST")
{
include 'db_connect.php';
$user=$_SESSION["username"];
$sql="select * from otp_table where `username`='$user'";
$result=mysqli_query($conn,$sql);
while($num=$result->fetch_assoc())
{
$def_otp=$num["otp"];
$name=$num["name"];
$username=$num["username"];
$password=$num["password"];
$address=$num["address"];
$city=$num["city"];
}
$user_otp=$_POST["user_otp"];
if($user_otp!=$def_otp)
{
  header("location:index.php?otp=0");
}

$sql="insert into `signup` (`name`, `username`, `password`, `address`,`city`) values ('$name','$username','$password','$address','$city')";
    mysqli_query($conn,$sql);
    header("location:index.php?otp=1");

}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Enter OTP</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            Enter OTP
          </div>
          <div class="card-body">
            <form id="otpForm"   method="post">
              <div class="form-group">
                <label for="otp">OTP:</label>
                <input type="text" class="form-control" name="user_otp" id="otp" placeholder="Enter OTP">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <div class="mt-3">
              <span id="countdown">05:00</span>
            </div>
           
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <!-- Popper.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

  <script>
    var timer; // Define a variable to hold the timer

    // Format the time remaining as mm:ss
    function formatTimeRemaining(remaining) {
      var minutes = Math.floor(remaining / 60000);
      var seconds = Math.floor((remaining % 60000) / 1000);
      return (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
    }

    // Update the timer display every second
    function updateTimerDisplay(endTime) {
      var timeRemaining = endTime - new Date().getTime();
      if (timeRemaining <= 0) {
        // If time has run out, clear the timer and reload the page
        clearTimeout(timer);
        window.location.href = "new-page.html";
      } else {
        // Otherwise, update the timer display and set a timeout to call this function again in 1 second
        $("#countdown").text(formatTimeRemaining(timeRemaining));
        timer = setTimeout(function() {
          updateTimerDisplay(endTime);
        }, 1000);
      }
    }

    // When the OTP form is submitted...
    $('#otpForm').submit(function(e) {
      e.preventDefault(); // Prevent the default form submission behavior

      // Get the value of the OTP input field
      var otpValue = $('#otp').val();

      // TODO: Do something with the OTP value (e.g. verify it)

      // Clear the timer
      clearTimeout(timer);

      // Redirect the user to the new page
      window.location.href = "new-page.html";
    });

    // When the page loads, start the timer
    $(document).ready(function() {
      var endTime = new Date().getTime() + 300000; // Set the end time 5 minutes from now
      updateTimerDisplay(endTime);
    });

    // When the "Res








    <!DOCTYPE html>
<html lang="en">
<head>
  <title>Enter OTP</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

  <div class="container mt-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card">
          <div class="card-header">
            Enter OTP
          </div>
          <div class="card-body">
            <form id="otpForm" action="/check_otp" method="post">
              <div class="form-group">
                <label for="otp">OTP:</label>
                <input type="hidden" name="email" value={{email}}>
                <input type="text" name ="user_otp" class="form-control" id="otp" placeholder="Enter OTP">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
            <div class="mt-3">
              <span id="countdown">05:00</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <!-- Popper.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

  <script>
    var timer; // Define a variable to hold the timer

    // Format the time remaining as mm:ss
    function formatTimeRemaining(remaining) {
      var minutes = Math.floor(remaining / 60000);
      var seconds = Math.floor((remaining % 60000) / 1000);
      return (minutes < 10 ? "0" : "") + minutes + ":" + (seconds < 10 ? "0" : "") + seconds;
    }

    // Update the timer display every second
    function updateTimerDisplay(endTime) {
      var timeRemaining = endTime - new Date().getTime();
      if (timeRemaining <= 0) {
        // If time has run out, clear the timer and reload the page
        clearTimeout(timer);
        window.location.href = "index.php";
      } else {
        // Otherwise, update the timer display and set a timeout to call this function again in 1 second
        $("#countdown").text(formatTimeRemaining(timeRemaining));
        timer = setTimeout(function() {
          updateTimerDisplay(endTime);
        }, 1000);
      }
    }


    // When the page loads, start the timer
    $(document).ready(function() {
      var endTime = new Date().getTime() + 300000; // Set the end time
      updateTimerDisplay(endTime); // Call the updateTimerDisplay function to start the timer
});

</script>
</body>
</html>
