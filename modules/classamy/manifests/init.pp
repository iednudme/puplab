class classamy (
               $string1 = hiera("key1"),
               $string2 = hiera("key2"),
            )

               { 
               file { "/tmp/$string1.txt":
                      content => "hiera test , $string2",
                      }

               notify {
                  "class amy run , this is $::clientcert":
               }
               }
