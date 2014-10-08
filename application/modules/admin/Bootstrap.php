<?php

class  Admin_Bootstrap extends Zend_Application_Module_Bootstrap
{
    
    public function _initSession()
    {
        new Zend_Session_Namespace();
              
    }

    public function _initPreDispatch()
    {
        $this->bootstrap('frontController');
        
        $front = Zend_Controller_Front::getInstance();
        
        $plugin = new Admin_Model_Components_PreDispatch();
        
        $front->registerPlugin($plugin);
        
    }
    
    


}

