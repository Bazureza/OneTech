<?php
class M_AccountDB extends CI_Model
{
    public function registAccountToDB($data){
        $this->db->trans_start();
        $this->db->insert('user',$data);
        $this->db->trans_complete();
    }

    public function verifyAccount($email, $hash){
        $this->db->trans_start();
        $data = array(
            'activeStatus' => '1',
        );

        $this->db->where('email', $email);
        $this->db->where('hash', $hash);
        $this->db->where('activeStatus', '0');
        $this->db->update('user', $data);
        $this->db->trans_complete();
    }

	public function getVerify($email, $hash){
		$this->db->select('activeStatus');
		$this->db->from('user');
		$this->db->where('email', $email);
		$this->db->where('hash', $hash);
		$query = $this->db->get();

		return $query->result();
	}

	public function account($email, $hash){
		$this->db->trans_start();
		$data = array(
			'activeStatus' => '1',
		);

		$this->db->where('email', $email);
		$this->db->where('hash', $hash);
		$this->db->where('activeStatus', '0');
		$this->db->update('user', $data);
		$this->db->trans_complete();
	}

	public function login($email, $password)
	{
		$cek = array('email' => $email, 'password' => $password);
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where($cek);
		$query = $this->db->get();

		if ($query->num_rows() == 1) {
			return true;
		} else {
			return false;
		}
	}

	public function loginAdmin($password)
	{
		$cek = array('password' => $password);
		$this->db->select('*');
		$this->db->from('admin');
		$this->db->where($cek);
		$query = $this->db->get();

		if ($query->num_rows() == 1) {
			return true;
		} else {
			return false;
		}
	}

	public function getAccount($email){
		$cek = array('email' => $email);
		$this->db->select('*');
		$this->db->from('user');
		$this->db->where($cek);
		$query = $this->db->get();
		return $query;
	}

	public function lupaPassword($email, $newPassword)
	{
		$this->db->trans_start();
		$data = array(
			'password' => $newPassword
		);
		$this->db->where('email',$email);
		$this->db->update('user', $data);
		$this->db->trans_complete();
		return true;
	}

	public function count(){
		$this->load->database();
		$query = $this->db->query("SELECT COUNT(*) AS 'total' FROM user ;");
		$data['data_array'] = $query->result();
		return $data;
	}
}
?>
