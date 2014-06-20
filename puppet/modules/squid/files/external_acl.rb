#!/opt/vagrant_ruby/bin/ruby


while STDIN.gets
  
  p=File.open('/tmp/test.log', 'a')
  req_info=$_.split
  p.puts req_info.inspect
  p.flush
  p.close
  if req_info[1] =~ /^\/#{req_info[0]}/
    $stdout.puts("OK")
    $stdout.flush
  else
    $stdout.puts("BAD")
    $stdout.flush
  end

end

