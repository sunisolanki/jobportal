<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Indeed_Jobs extends CI_Controller {
	var $client = '';

	public function __construct(){
        parent::__construct();

		$this->load->model('ads_model'); // Make sure model is loaded
		$this->ads = $this->ads_model->get_ads();

		$indeed_key = array(INDEED_KEY); // Make sure this constant is defined
	    $this->load->library('indeed', $indeed_key);
    }

	public function index()
	{
		$q  = $this->input->get('q');
		$l  = $this->input->get('l');
		$co = $this->input->get('co');

		$data['ads_row'] = $this->ads;
		$result_set = '';
		$param = $q;

		if ($q != '' && $l != '') {
			$result_set = $this->get_jobs($q, $l, $co);

			// ✅ Debug if result is invalid
			if (!is_array($result_set)) {
				log_message('error', 'Indeed API returned non-array response: ' . print_r($result_set, true));
			}
		}

		$data['title']  = $param . ' Jobs';
		$data['result'] = is_array($result_set) && isset($result_set['results']) ? $result_set['results'] : array();
		$data['param']  = $param;

		$this->load->view('indeed_jobs_view', $data);
	}

	private function get_jobs($q = '', $l = '', $co = 'US')
	{
		$params = array(
    		"q"         => $q,
    		"l"         => $l,
			"limit"     => '20',
			"highlight" => 1,
			"co"        => $co,
    		"userip"    => $this->input->ip_address(),
    		"useragent" => $this->agent->agent_string()
		);

		$results = $this->indeed->search($params);

		// ✅ Try decoding if result is JSON string
		if (is_string($results)) {
			$decoded = json_decode($results, true);
			return is_array($decoded) ? $decoded : array("error" => $results);
		}

		return $results;
	}
}