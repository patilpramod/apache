class apache::service(
    String $servicename = lookup({"name"="apache.servicename","default_value"="default"})
){
    service{'webserver-service'
        name       =>servicename,
        ensure     => present,
        enable     => true,
        hasrestart => true
    }
}