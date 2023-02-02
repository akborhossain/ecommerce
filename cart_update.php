<?php
	include 'includes/session.php';

	$conn = $pdo->open();

	$output = array('error'=>false);

	$id = $_POST['id'];
	$qty = $_POST['qty'];

	if(isset($_SESSION['user'])){
		try{
			if ($qty<=10) {
				$stmt = $conn->prepare("UPDATE cart SET quantity=:quantity WHERE id=:id");
				$stmt->execute(['quantity'=>$qty, 'id'=>$id]);

				$output['message'] = 'Updated';
			}
			if ($qty >10) {
			$output['message'] = 'please less you quantity';
			}

		}
		catch(PDOException $e){
			$output['message'] = $e->getMessage();
		}
	}
	else{
		foreach($_SESSION['cart'] as $key => $row){
			if($row['productid'] == $id){
				$_SESSION['cart'][$key]['quantity'] = $qty;
				$output['message'] = 'Updated';
			}
		}
	}

	$pdo->close();
	echo json_encode($output);

?>
