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
end
