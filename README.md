# Ruby-Blind-XSS-script
Automated Blind XSS script on ruby

Making Blind SQLI using curl in order to make in faster. Use Linux with curl or download curl.exe for Windows.

fast_blind_sql_get.rb - Blind SQLI using GET method.
fast_blind_sql_post.rb - Blind SQLI using POST method.

Parameters: 
 - page_to_sql : address with bind SQLI
 - wrong_phrase : Phrase after request that means bad mysql query
 - right_phrase :  Phrase after request that means successful mysql query
 - num_letters : Number of letters of some field to get via SQLI (for example, password)