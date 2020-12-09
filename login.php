<?php
session_start();
if(isset($_SESSION['admin'])){
  header('location: admin/home.php');
}

if(isset($_SESSION['voter'])){
  header('location: home.php');
}
?>
<?php include 'includes/header.php'; ?>
<body style="background: url(images/bg/17.jpg) no-repeat; background-size: cover;">
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-4 login">
        <div class="login-logo text-primary">
          <h1 style="font-weight: 700">NAICTS ELECTION</h1>
        </div>

        <div class="login-box-body">
          <p class="login-box-msg">Login to cast your vote</p>
          <form action="login_check.php" method="POST">
            <div class="form-group has-feedback">
              <input type="text" class="form-control" name="voter" placeholder="Student ID" required>
              <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="password" placeholder="Password" required>
              <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
              <div class="col-md-10 mx-auto col-xs-4">
                <button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
              </div>
            </div>
          </form>
        </div>
        <?php
        if(isset($_SESSION['error'])){
          echo "
          <div class='callout callout-danger text-center mt20'>
          <p>".$_SESSION['error']."</p>
          </div>
          ";
          unset($_SESSION['error']);
        }
        ?>
      </div>
    </div>
  </div>

  <?php include 'includes/scripts.php' ?>
</body>

<footer>
</div>
</html>
