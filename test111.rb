ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

cadidate_list =[]
get_sum = Hash.new(0)

ballots.each do |vote|
      vote.each do |location, name|
        if location ==1
           get_sum[name] += 3
        elsif location == 2
           get_sum[name]+= 2
        elsif location == 3
            get_sum[name] += 1
        else
            get_sum[name] += 0
        end
      end
    end
    winner = get_sum.sort[0]
    puts winner
