# your code goes here
require "pry"

class Person

attr_reader :name
attr_accessor :bank_account
#attr_accessor :hygiene
#attr_accessor :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end

  def hygiene=(num)
    @hygiene = num
    balance_hygiene
  end

  def hygiene
    @hygiene
  end

  def happiness=(num)
    @happiness = num
    balance_happiness
  end

  def happiness
    @happiness
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    balance_hygiene
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    balance_happiness
    balance_hygiene
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    self.balance_happiness
    friend.balance_happiness
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend,topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  def balance_hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
  end

  def balance_happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
  end

end
