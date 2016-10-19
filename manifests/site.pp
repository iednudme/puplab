node default { 
    file { 
    "/tmp/$fqdn.txt": content => "Hello, First puppet test! $string", 
    } 
    
#    notify {
#    "I am running on node $fqdn   $sring": 
#    }
    }
import 'nodes/vm23.pp'
import 'nodes/vm11.pp'

