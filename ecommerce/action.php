<?php

include 'includes/session.php';
$conn = $pdo->open();

$output = array('error'=>false);

// Checkout and save customer info in the orders table
	if (isset($_POST['action']) && isset($_POST['action']) == 'order') {
	  $name = $_POST['name'];
	  $email = $_POST['email'];
	  $phone = $_POST['phone'];
	  $products = $_POST['products'];
	  $grand_total = $_POST['grand_total'];
	  $address = $_POST['address'];
	  $pmode = $_POST['pmode'];

	  $data = '';

	  $stmt = $conn->prepare("INSERT INTO orders (user_id,name,email,phone,address,pmode,products,amount_paid)VALUES(:user_id, :name,:email,:phone,
      :address,:pmode,:products,:amount_paid)");

	  $stmt->execute(['user_id'=>$user['id'], 'name'=>$name, 'email'=>$email, 'phone'=>$phone,'address'=>$address, 'pmode'=>$pmode, 'products'=>$products, 'amount_paid'=>$grand_total]);


		$product_Id=[];
		$product_Id[]=unserialize($_POST['productid']);
		$quantity=[];
		$quantity[]=unserialize($_POST['quantity']);
		$count=count($product_Id);

		$i=0;
		for ($i;$i< $count;$i++){
			$stmt3 = $conn->prepare("INSERT INTO details (sales_id	,product_id	,quantity	)VALUES(:sales_id, :product_id, :quantity)");
			$stmt3->execute(['sales_id'=>$i, 'product_id'=>$product_Id[$i], 'quantity'=>$quantity[$i]]);

		}



	  $stmt2 = $conn->prepare('DELETE FROM cart WHERE user_id=:user_id');
	  $stmt2->execute(['user_id'=>$user['id']]);
	  $data .= '<div class="text-center">
								<h1 class="display-4 mt-2 text-danger">Thank You!</h1>
								<h2 class="text-success">Your Order Placed Successfully!</h2>
								<h4 class="bg-danger text-light rounded p-2">Items Purchased : ' . $products . '</h4>
								<h4>Your Name : ' . $name . '</h4>
								<h4>Your E-mail : ' . $email . '</h4>
								<h4>Your Phone : ' . $phone . '</h4>
								<h4>Total Amount Paid : ' . number_format($grand_total,2) . '</h4>
								<h4>Payment Mode : ' . $pmode . '</h4>
						  </div>';
	  echo $data;
    $conn = $pdo->close();

	}









 ?>
