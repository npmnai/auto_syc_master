## ## upversioned 28dec2017
# PARAM_DESCRIPTIONS
# $SCE INPUT FILE ../data/input.txt
# $SCE OUTPUT FILE ../results/output.txt
##

f = File.open("../results/output.txt", "a+")
File.readlines("../data/input.txt").each do |line|
  f.puts line
end
f.puts
f.puts "Created on: #{Time.now.utc}"
f.close
