
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
  <div class="wrapper">
    <header class="main-header">
      <nav class="navbar navbar-static-top bg-primary">
        <div class="container-fluid">
          <div class="navbar-header">
              <a href="#" class="navbar-brand"><b>NAICTS | E-VOTING</b></a>
          </div>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse pull-left" id="navbar-collapse"></div>
          <!-- /.navbar-collapse -->
          <!-- Navbar Right Menu -->
          <div class="navbar-custom-menu h-100 my-3">
            <ul class="nav navbar-nav">
              <li><a href="admin"><i class="fa fa-sign-in"></i> Admin</a></li>
            </ul>
          </div>
          <!-- /.navbar-custom-menu -->
        </div>
        <!-- /.container-fluid -->
      </nav>
    </header>
    
    <div class="content-wrapper" style="min-height: 80%;">
	    <div class="container-fluid">
        <div class="col-md-10 col-12 bg-light mx-auto" style="border-radius: 5px">
          <div class="row text-left">
            <div class="col-md-10 col-11 mx-auto p-3">
						<div class="row text-dark">
							<div>
                <h2 class="bold">NAICTS <span class="text-primary">E-VOTING!</span></h2>
								<div class="bold">
									We were tasked with increasing the voter turnout, while keeping our voting system as close to ungameable as possible.
                  Our focus on security and innovative new login process has allowed us to grant voters the privilege of voting from the
                  comfort of their own homes. Gone are the days of the restricted voter. <br><br>
                  We enhanced the security of votes so as to address the issue of overvoting which usually cause
                  discouragment to voters.
                  This system will solve the issue of election rigging.
                  Rigging of election should be a thing of the past due to the transpency of the election, observers
                  are also in check to monitor how the election is going. <br><br>
                  With all the above points, we hope to awoke the trust voter had in the electoral system and believe that
                  their vote will surely count.
								</div>
							</div>
              <div class="w-100 text-center mt-5">
                    <a href="login.php">
                    <button type="button" class="btn btn-lg btn-primary" name="button">VOTE NOW</button>
                    </a>
                    <br> <br>
                  </div>
						</div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <?php include 'includes/footer.php'; ?>
  </div>
</body>
