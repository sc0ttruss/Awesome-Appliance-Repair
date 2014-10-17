name "mysql_server"
    description "Role applied to a machine to install mysql server."
    run_list 'recipe[mysql::server]'
    #override_attributes :mysql => { :server_root_password => 'msqlpassword' }
    
