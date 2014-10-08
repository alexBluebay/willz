<?php

class Bootstrap extends Zend_Application_Bootstrap_Bootstrap
{
        
    public function _initSetDbAdapter()
    {
        $config = new Zend_Config(
            array(
                'database' => array(
                    'adapter' => 'pdo_mysql',
                    'params'  => array(
                        'host'     => '127.0.0.1', // 87.230.18.245
                        'dbname'   => 'bluebay_will',
                        'username' => 'root', // bluebay_will
                        'password' => '', //parola123#
                    )
                )
            )
        );
        
        $db = Zend_Db::factory($config->database);
        Zend_Db_Table::setDefaultAdapter($db);
    }

    public function _initLayout()
    {
        $this->_frontcontroller = Zend_Controller_Front::getInstance();
        $this->_frontcontroller->setControllerDirectory(APPLICATION_PATH . 'modules/admin/controllers');        
        
        $options = array(
                'layout' => 'admin',
                'layoutPath' => APPLICATION_PATH . '/layouts/scripts'
        );
        
        Zend_Layout::startMvc($options);
        
    }
    
    public function _initRoutes()
    {
        $router = Zend_Controller_Front::getInstance()->getRouter();
        
        
        $route = new Zend_Controller_Router_Route('admin/edit-link/:linkId',
                array(
                    'module' => 'admin',
                    'controller' => 'dashboard',
                    'action' => 'edit-link',
                    'linkId' => ''
                    )
                );
        $router->addRoute('editLink', $route);
        
        
        $route = new Zend_Controller_Router_Route('admin/view-link/:linkId',
                array(
                    'module' => 'admin',
                    'controller' => 'dashboard',
                    'action' => 'view-link',
                    'linkId' => ''
                    )
                );
        $router->addRoute('viewLink', $route);
        
        
        $route = new Zend_Controller_Router_Route('admin/all-links/',
                array(
                    'module' => 'admin',
                    'controller' => 'dashboard',
                    'action' => 'all-links'
                    )
                );
        $router->addRoute('allLinks', $route);
        
        $route = new Zend_Controller_Router_Route('admin/delete-link/:linkId',
                array(
                    'module' => 'admin',
                    'controller' => 'dashboard',
                    'action' => 'del-link',
                    'linkId' => ''
                    )
                );
        $router->addRoute('delLink', $route);
        
        
        $route = new Zend_Controller_Router_Route('admin/edit-category/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'category',
                    'action' => 'edit-category',
                    'id' => ''
                    )
                );
        $router->addRoute('editCategory', $route);
        
        
        $route = new Zend_Controller_Router_Route('admin/delete-category/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'category',
                    'action' => 'del-category',
                    'id' => ''
                    )
                );
        $router->addRoute('delCategory', $route);
        
        $route = new Zend_Controller_Router_Route('admin/edit-advertising/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'advertising',
                    'action' => 'edit-advertising',
                    'id' => ''
                    )
                );
        $router->addRoute('editAdvertising', $route);
        
        $route = new Zend_Controller_Router_Route('admin/delete-advertising/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'advertising',
                    'action' => 'del-advertising',
                    'id' => ''
                    )
                );
        $router->addRoute('delAdvertising', $route);
        
        $route = new Zend_Controller_Router_Route('admin/edit-user/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'users',
                    'action' => 'edit-user',
                    'id' => ''
                    )
                );
        $router->addRoute('editUser', $route);
        
        $route = new Zend_Controller_Router_Route('admin/delete-user/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'users',
                    'action' => 'delete-user',
                    'id' => ''
                    )
                );
        $router->addRoute('delUser', $route);
        
        $route = new Zend_Controller_Router_Route('admin/edit-page/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'pages',
                    'action' => 'edit-page',
                    'id' => ''
                    )
                );
        $router->addRoute('editPage', $route);
        
        $route = new Zend_Controller_Router_Route('admin/edit-promo-link/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'promo-links',
                    'action' => 'edit-link',
                    'id' => ''
                    )
                );
        $router->addRoute('editPromoLink', $route);
        
        $route = new Zend_Controller_Router_Route('admin/delete-promo-link/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'promo-links',
                    'action' => 'delete-link',
                    'id' => ''
                    )
                );
        $router->addRoute('delPromoLink', $route);
        
        $route = new Zend_Controller_Router_Route('admin/add-promo-link/:id',
                array(
                    'module' => 'admin',
                    'controller' => 'promo-links',
                    'action' => 'add-link',
                    'id' => ''
                    )
                );
        $router->addRoute('addPromoLink', $route);
        
        $route = new Zend_Controller_Router_Route('admin/logout',
                array(
                    'module' => 'admin',
                    'controller' => 'index',
                    'action' => 'logout',
                    'id' => ''
                    )
                );
        $router->addRoute('logout', $route);
        
    }
    
    
    
}

