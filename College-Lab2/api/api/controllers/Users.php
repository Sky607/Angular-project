<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

    public function __construct() {
        parent::__construct();
        header('Access-Control-Allow-Origin: *');
        header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
        header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
        $this->load->model('Users_model');
        $this->load->library('session');
    }
    
    public function getUsers() {
        $this->load->model('Users_model', 'users');
        $data['result'] =  $this->users->getUsersModel();
        echo json_encode($data);
    }

    // public function saveUser() {
    //     $this->res = $this->Users_model->registerUser();
    //     echo json_encode($this->res);
    // }

    public function saveStud() {
        $result['stat'] = $this->Users_model->registerStudent();
        echo json_encode($result);
    }

    public function saveEmp() {
        $result['stat'] = $this->Users_model->registerFaculty();
        echo json_encode($result);
    }

    public function login() {
        // $login_data = $this->Users_model->login();
        // $ret  = $login_data->row();
        $login['data'] = $this->Users_model->login();
        $login['sess_id'] = session_id();
        $login['stat'] = true;
        echo json_encode($login);
    }
	
	public function getStudents() {
        $result = $this->Users_model->getStudData();
        echo json_encode($result);
    }

    public function getEmployee() {
        $result = $this->Users_model->getEmpData();
        echo json_encode($result);
    }
}
