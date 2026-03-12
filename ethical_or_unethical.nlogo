extensions [ time ]

globals [
  ;relative-cost        ;; this is the relative cost of ethical behavior
  ;diversity            ;; mutation strength during reproduction
  ;average-ethicality   ;; level of ethicality for population
  
]

turtles-own [
  ethicality  ;; moral character (0-100)
  myscore     ;; fitness score, determines whether they live or die
  behavior   ;; records whether the people are acting ethically or not.
]

;; The setup is divided into 2 procedures
to setup
  clear-all
  setup-turtles
  reset-ticks 
end

;; Create agents
to setup-turtles

  create-turtles number-of-agents [
    set shape turtle-shape
    setxy random-xcor random-ycor
    set size 1.5  ;; easier to see
    
    ; Ethicality drawn from normal distribution
    set ethicality round random-normal average-ethicality diversity
    bound-ethicality
    
    ; Set the initial score to a random number between 1-100
    set myscore random 100
    
    recolor
  ]
end

to go
  ask turtles [move]
  interact
  reproduce
  update-visuals
  update-plots
  tick              
end

;; Turtles move about at random.
to move ;; turtle procedure
  rt random 360
  fd 1
end


to interact 
  ask turtles[
    if any? other turtles-here[
      let partner one-of other turtles-here
      interact-with partner
    ]
  ]
end

to interact-with [partner]
  let chance random 100
  if ethicality >= chance [
    act-ethically partner
    set behavior "ethical"
  ]
  
  if ethicality < chance [
    act-unethically partner
    set behavior "unethical"
  ]
  
  ;; the below code shows ethicality and score of each agent(person)
  set label(word"e:" ethicality ", s:" myscore)
end

; If the agent acts ethically, he pays cost and his partner gains benefit
to act-ethically [partner]
  set myscore myscore - relative-cost 
  ask partner[ 
    set myscore myscore + 1 
  ]
end

; If the agentn acts unethically, he gains an advantage and the partner loses
to act-unethically [partner]
  set myscore myscore + 1 
  ask partner[ 
    set myscore myscore - 1
  ]
end

;; This is what decides or affects the diversity rate of the turtles. Evolutionary Selection
;; The 3 with lowest scores die and the 3 with highest score duplicate and their score halfens
to reproduce
  ; kills worst performers
  ask min-n-of 3 turtles[myscore] [die]
  
  ; reproduces top perfromers at half their score
  ask max-n-of 3 turtles[myscore] [
    set myscore myscore / 2
    hatch 1[
      move
      
      ; Child inherits ethicality with mutation
      set ethicality ethicality + round random-normal 0 diversity / 4
      bound-ethicality
      
      ; fresh score for child and new color
      set myscore random 100
      recolor
    ]
  ]
end

to bound-ethicality
  if ethicality < 0 [ set ethicality 0]
  if ethicality > 100 [set ethicality 100]
end

; If they maintain good ethical conduct they are presented as gree, else they are red
to recolor
  if ethicality > 50 [
    set color green
  ]
  if ethicality <= 50 [
    set color red
  ]
end

to update-visuals
  ask turtles [recolor]
end



; Copyright 2022 Uri Wilensky.
; See Info tab for full copyright and license.