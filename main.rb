#Compares weight of 2 items
def weigh(item1, item2)
  $totalWeighings += 1
  if item1 > item2
    return 0
  elsif item2 > item1
    return 1
  else
    return 2
  end
end

#Global variables are dirty...shame on me.
#Not sure of better practice in Ruby
$totalWeighings = 0
balls = Array.new(8, 0)

#Start unnecessary, mandatory loop to meet assignment requirements. :P
i=0
while i<balls.length
  balls[i] = 5
  i += 1
end
#Randomly increase weight of one ball to 6
balls[rand(balls.length-1)] += 1

#Divide balls into 2 sets of 3 and 1 set of 2
set0 = balls[0..2]
set1 = balls[3..5]
set2 = balls[6..7]

#Compare first 2 sets to determine which set contains the heavy ball
heavySet = weigh(set0.reduce(:+), set1.reduce(:+))

#Find heaviest ball from heaviest set
heavyBall = weigh(balls[heavySet*3], balls[heavySet*3+1])
#Calulates number of heaviest ball from original set.
heavyBall = heavySet*3 + heavyBall + 1
puts "I found the answer in #{$totalWeighings} weighings."
puts "The heaviest ball in the set is ball \# #{heavyBall}."
puts "Proof: #{balls}"
