<?php
class custom_encryption {
	private $key = 'jjODSJFLSDKJFSDF';
	
	public function encrypt_data($value) {
		return bin2hex(str_replace(Custom_Encryption::character_input(), Custom_Encryption::codes(), $value));
	}
	
	public function decrypt_data($value) {
		return str_replace(Custom_Encryption::codes(), Custom_Encryption::character_input(), $this->hex_2_bin($value));
	}
	
	private static function codes() {
		return array('[c^','|fY','F_=','IO','bY','xE','<wA','Vy','gP!','M>*');	
	}
	
	private static function character_input() {
		return array('0','1','2','3','4','5','6','7','8','9');	
	}
	
	private function hex_2_bin($h) {
		if (!is_string($h)) return null;
		$r = '';
		for ($a = 0; $a < strlen($h); $a += 2) {
			$r .= @chr(hexdec($h[$a] . $h[$a + 1]));  // ✅ Fixed: Use [] instead of {}
		}
		return $r;
	}
}
?>
