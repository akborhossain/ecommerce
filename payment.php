<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
  <div class="wrapper">

  	<?php include 'includes/navbar.php'; ?>

  	  <div class="content-wrapper">
  	    <div class="container">
           <section class="content">

          <form class="" action="sales.php" method="post">

            <select class="input-group-text pr-5" name="payment_method" required>

              <option value="">Select</option>
              <option value="cod">Cash On Delivery</option>
              <option value="bkash">Bkash</option>
              <option value="nogod">Nogod</option>
              <option value="upay">Upay</option>
            </select>

            <input type="text" name="trid" value="" placeholder="Transaction id If not COD">
            <input type="submit" name="order" value="Place Order">

          </form>
        </section>

        </div>
      </div>
    </div>


<?php include 'includes/scripts.php'; ?>
</body>
</html>
