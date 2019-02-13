  </div>
    <!-- End of Main Content -->
    <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Team IT BAPAS JAKSEL 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->
  </div>
  <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->
</div>

 <!-- Bootstrap core JavaScript-->
 <script src="../vendor/jquery/jquery.min.js"></script>
  <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="./js/sb-admin-2.min.js"></script>

  <script src="./js/ajax-content-load.js"></script>

  <!-- Page level plugins -->
  <script src="./vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="./js/demo/chart-area-demo.js"></script>
  <script src="./js/demo/chart-pie-demo.js"></script>

<!-- ajax load content page test -->
<script type="text/javascript">
$(document).ready(function() {
  $('#page_content').load('./frontend/view_dashboard.php');

  // ajax page content loader
  $('a.link-page').click(function() {
    var page = $(this).attr('name');
    $('#page_content').load('./frontend/view_'+page+'.php');
  });
});
  </script>
  <!-- Credits to Dashboard tremplate to SB Admin Panel --> 
</body>
</html>
<!-- EOF View_Footer file -->