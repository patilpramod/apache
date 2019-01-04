class apache{
    include apache::package
    include apache::config
    include apache::service
    
    class['apache::package']->class['apache::config']~>class['apache::service']
}