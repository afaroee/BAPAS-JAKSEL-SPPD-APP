<!-- Page Heading -->
 <div class="d-sm-flex align-items-center justify-content-between mb-4">

    <h1 class="h3 mb-0 text-gray-800">Pegawai</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-plus fa-sm text-white-50"></i> Add User</a>

  </div>
  
 	<!-- Data Table User -->
	<div class="card shadow mb-4">
    	<div class="card-header py-3">
        	<h6 class="m-0 font-weight-bold text-primary">Daftar Data User</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Nama</th>
                      <th>NIP</th>
                      <th>Jabatan</th>
                    </tr>
                  </thead>
                  <tfoot>
                  	<tr>
                      <th>Id</th>
                      <th>Nama</th>
                      <th>NIP</th>
                      <th>Jabatan</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <?php include("../backend/proc_pegawai.php"); ?>
                  </tbody>
                </table>
           </div>
        </div>
    </div>
<!-- Page level plugins -->
 <script src="./js/datatables/jquery.dataTables.min.js"></script>
 <script src="./js/datatables/dataTables.bootstrap4.min.js"></script>
    
  <!-- Page level custom scripts -->
  <script src="./js/datatables-demo.js"></script>
