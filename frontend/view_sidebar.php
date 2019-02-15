  <?php include './config/conf.inc.php'; ?>
  <!-- Sidebar -->
  <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
      <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-file-signature"></i>
      </div>
      <div class="sidebar-brand-text mx-3"><?php echo $DASHBOARD_TITLE;?></div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">

    <!-- Nav Item - Dashboard -->
    <li class="nav-item active">
      <a class="nav-link link-page" name="dashboard" href="#">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      Menu Utama
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
      <a class="nav-link link-page" name="pegawai" href="#" aria-expanded="true">
        <i class="fas fa-fw fa-users"></i>
        <span>Pegawai</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#" aria-expanded="true">
        <i class="fas fa-fw fa-file-signature"></i>
        <span>Entry SPPD</span>
      </a>
    </li>

    <li class="nav-item">
      <a class="nav-link" href="#" aria-expanded="true">
        <i class="fas fa-fw fa-file-contract"></i>
        <span>Lapor SPPD</span>
      </a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Heading -->
    <div class="sidebar-heading">
      System Administrator Menu
    </div>

    <!-- Nav Item - Pages Collapse Menu -->
    <li class="nav-item">
      <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-folder"></i>
        <span>Manajemen Users</span>
      </a>
      <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
          <a class="collapse-item link-page" name="userManagement" href="#">User Data</a>
          <a class="collapse-item link-page" name="userRole" href="#">User Role Level</a>
        </div>
      </div>
    </li>

    <!-- Nav Item - DB System -->
    <li class="nav-item">
      <a class="nav-link" href="#" id="link_dbsys">
        <i class="fas fa-fw fa-database"></i>
        <span>Database System</span></a>
    </li>

    <!-- Nav Item - Help -->
    <li class="nav-item">
      <a class="nav-link" href="#" id="link_help">
        <i class="fas fa-fw fa-question"></i>
        <span>Help</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
      <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

  </ul>
  <!-- End of Sidebar -->