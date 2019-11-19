 <?php

class M_ProductDB extends CI_Model
{
    public function registProduct($name, $type, $quota, $price, $disc, $startDate, $lastDate, $desc, $image, $date)
    {
		$data = array(
			'productName' => $name,
			'productType' => $type,
			'productQuota' => $quota,
			'productPrice' => $price,
			'discount' => $disc,
			'startDateDiscount' => $startDate,
			'lastDateDiscount' =>  $lastDate,
			'description' => $desc,
			'ProductImage' => $image,
			'DatePost' =>  $date
		);
		$this->db->trans_start();
		$this->db->insert('product',$data);
		$this->db->trans_complete();
    }

    public function removeProduct($id)
	{
		$this->db->trans_start();
		$this->db->remove('product', array('id'=>$id));
		$this->db->trans_complete();
	}

	public function editProduct($name, $type, $quota, $price,  $description, $image, $id) {
		$data = array(
			'productName' => $name,
			'productType' => $type,
			'productQuota' => $quota,
			'productPrice' => $price,
			'description' => $description,
			'ProductImage' => $image,
		);
		$this->db->trans_start();
		$this->db->where('id', $id));
		$this->db->update('product', $data);
		$this->db->trans_complete();
	}

	public function giveDiscount($discount, $startDateDiscount, $lastDateDiscount, $id) {
		$data = array(
			'discount' => $discount,
			'startDateDiscount' => $startDateDiscount,
			'lastDateDiscount' =>  $lastDateDiscount
		);

    	$this->db->trans_start();
		$this->db->where('id', $id));
		$this->db->update('product', $data);
		$this->db->trans_complete();
	}

	public function getProductData($type){

	}



}

?>