<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Labs extends CI_Controller {

    public function __construct() {
        parent::__construct();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        $this->load->model('Lab_model');
    }

    public function saveLabs() {
        $result['stat'] = $this->Lab_model->registerStudent();
        echo json_encode($result);
    }

    public function getLabs() {
        $result = $this->Lab_model->getLabData();
        echo json_encode($result);
    }

    public function getTimeTable() {
        $result = $this->Lab_model->getTableData();
        echo json_encode($result);
    }
	
	public function getFaculty() {
        $result = $this->Lab_model->getFacultyData();
        echo json_encode($result);
    }

    public function updateStat() {
        $result = $this->Lab_model->updateStatus();
		
        echo json_encode($result);
    }
}
