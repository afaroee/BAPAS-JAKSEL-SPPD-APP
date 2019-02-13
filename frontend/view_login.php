<?php
include("view_header.php");
?>
<body class="bg-gradient-primary">
<div class="container">

<!-- Outer Row -->
<div class="row justify-content-center">

  <div class="col-xl-10 col-lg-12 col-md-9">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
          <div class="col-lg-6">
            <div class="p-5">
              <div class="text-center">
                <h6>BAPAS JAKSEL KLAS 1 <br/> SPPD APP v.1.0</h6>
                <h1 class="h4 text-gray-900 mb-4">Selamat Datang!</h1><br/>
              </div>
              <form class="user" action="./backend/proc_login.php" method="post">
                <div class="form-group">
                  <input type="text" class="form-control form-control-user" id="username" name="username" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                  <div class="custom-control custom-checkbox small">
                    <input type="checkbox" class="custom-control-input" id="customCheck">
                    <label class="custom-control-label" for="customCheck">Remember Me</label>
                  </div>
                </div>
                <button type="submit" class="btn btn-primary btn-user btn-block">
                  Login
                </button>
                <hr>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>

</div>
<?php
include("view_footer.php");
?>