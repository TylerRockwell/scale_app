def findHeaviestSet(balls)
  totalSet1 = 0
  totalSet2 = 0

  for i in 0..2
    totalSet1 += balls[i]
    totalSet2 += balls[i+3]
  end

  if totalSet1 > totalSet2
    return 1
  elsif totalSet2 > totalSet1
    return 2
  else
    return 3
  end
end

def findHeaviestBall(balls, setModifier)
  setModifier *= 3
  currentHeaviest = 0
  heaviestIndex = 0
  weight = 0
  for i in 0..2
    weight = balls[i+setModifier]
    if weight > currentHeaviest
      currentHeaviest = weight
      heaviestIndex = i+setModifier
    end
  end
  heaviestIndex+1
end

balls = Array.new(9, 5)
#Randomly increase weight of one ball
balls[rand(balls.length-1)] += 1
puts balls
#Find heaviest ball
heavySet = findHeaviestSet(balls)
heavySet -= 1
heavyBall = findHeaviestBall(balls, heavySet)
puts "The heaviest ball in the set is ball \# #{heavyBall}."
