require 'posix/mqueue'
require 'json'

def main
  m = POSIX::Mqueue.new("/whatever", msgsize: 8192, maxmsg: 10)
  10.times do |i|
    m.send({ messsage: "hello python world #{i}" }.to_json)
    sleep 1
  end
  m.send ({ message: 'end'}.to_json)
ensure
  m.unlink if m
end

if __FILE__ == $PROGRAM_NAME
  main
end