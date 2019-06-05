# your code goes here
class Person 
    attr_reader :name
    attr_writer 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness_points)
        if happiness_points > 10 
            @happiness = 10
        elsif happiness_points < 0 
            @happiness = 0 
        else
            @happiness = happiness_points
        end
    end

    def hygiene=(hygiene_points)
        if hygiene_points > 10 
            @hygiene = 10
        elsif hygiene_points < 0 
            @hygiene = 0 
        else
            @hygiene = hygiene_points
        end
    end

    def happy?
        # if @happiness > 7 
        #     true 
        # else
        #     false
        # end
        @happiness > 7
    end

    def clean?
        # if @hygiene > 7 
        #     true
        # else
        #     false
        # end
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end

    def take_bath 
        # @hygiene += 4
        # if @hygiene > 10 
        #     @hygiene = 10 
        # end
        bath_points = @hygiene + 4
        self.hygiene = bath_points
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        work_out_points = @hygiene - 3 
        self.hygiene = work_out_points 

        work_out_happy_points = @happiness + 2 
        self.happiness = work_out_happy_points 

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?" 
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = (@happiness - 2)
            person.happiness = (person.happiness - 2)
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = (@happiness + 1)
            person.happiness = (person.happiness + 1)
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end








end