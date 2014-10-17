name "httpd_server"
    description "Role applied to a machine to install httpd server."
    run_list 'recipe[apache2::default]'
    
