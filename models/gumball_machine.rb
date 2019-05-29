class Gumball
end

class GumballMachineModel

  def initialize(gumballCount: 0)
    @gumballCount = gumballCount
  end
  
  def dispense
    if @gumballCount > 0
      @gumballCount -= 1
      return Gumball.new
    else
      return nil
    end
  end

  def refill(count)
    @gumballCount += count if count > 0
    return @gumballCount
  end

end