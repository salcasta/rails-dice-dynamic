class DiceController < ApplicationController
  def main_page
    render({ :template => "dice_templates/main_page" })
  end

  def two_six
    @num_dice = 2
    
    @sides = 6
    
    @rolls = []
    
    @num_dice.times do
      die = rand(1..@sides)
    
      @rolls.push(die)
    end

    render({ :template => "dice_templates/two_six" })
  end

  def two_ten
    @num_dice = 2
    
    @sides = 10
    
    @rolls = []
    
    @num_dice.times do
      die = rand(1..@sides)
    
      @rolls.push(die)
    end

    render({ :template => "dice_templates/two_ten" })
  end

  def one_twenty
    @num_dice = 1
    
    @sides = 20
    
    @rolls = []
    
    @num_dice.times do
      die = rand(1..@sides)
    
      @rolls.push(die)
    end

    render({ :template => "dice_templates/one_twenty" })
  end

  def five_four
    @num_dice = 5
    
    @sides = 4
    
    @rolls = []
    
    @num_dice.times do
      die = rand(1..@sides)
    
      @rolls.push(die)
    end

    render({ :template => "dice_templates/five_four" })
  end

  def random
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end

    render({ :template => "dice_templates/random" })
  end
end
