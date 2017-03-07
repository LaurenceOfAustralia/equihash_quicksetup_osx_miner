puts "Enter your mining pools url."
url = gets

puts "Enter your username for that pool."
username = gets

puts "Enter your workers name for that pool."
worker_name = gets

puts "Enter your workers password."
worker_password = gets

puts "Enter the amount of threads. If you enter nothing 4 threads will be used."
num_threads = gets

if num_threads == 0 or nil
  system "./nheqminer -l #{url} -u #{username}.#{worker_name} -p #{worker_password} -t 4"
else
  system "./nheqminer -l #{url} -u #{username}.#{worker_name} -p #{worker_password} -t #{num_threads}"
end
