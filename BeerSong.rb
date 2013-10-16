class BeerSong

  attr_accessor :beers

  def initialize(beers)
    if beers < 0
      @beers = 0
    elsif beers > 99
      @beers = 99
    else
      @beers = beers
    end      
  end


  def number_to_english
    english_num = []
    second_digit = ['One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine']
    first_digit = ['Twenty','Thirty','Fourty','Fifty','Sixty','Seventy','Eighty','Ninety']
    ten_and_teens = ['Ten', 'Eleven', 'Twelve', 'Thirteen',
                       'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen']
    num, rem = beers.divmod(10)
    if num == 0
      english_num << second_digit[rem - 1]
    elsif num == 1   
      english_num << ten_and_teens[rem]
    else
      english_num << first_digit[num - 2]
      unless rem == 0
        english_num << second_digit[rem - 1] 
      end  
    end 
    if english_num[1].nil?
      "#{english_num[0]}"
    else
      "#{english_num[0]}-#{english_num[1]}" 
    end 
  end 

  def print_song
    while beers != 0
      if beers > 1
        puts "#{number_to_english} bottles of beer on the wall,"
        puts "#{number_to_english} bottles of beer,"
        puts "Take one down, pass it around,"
        self.beers -= 1
        unless self.beers == 1
          puts "#{number_to_english} bottles of beer on the wall."
        else
          puts "#{number_to_english} bottle of beer on the wall."
        end  
        puts
      else
        puts "#{number_to_english} bottle of beer on the wall,"
        puts "#{number_to_english} bottle of beer,"
        puts "Take one down, pass it around,"
        self.beers -= 1
        puts "Zero bottles of beer on the wall."
      end
    end
  end   
end 

number = BeerSong.new(99)
st = Time.new
number.print_song 
et = Time.new
puts et - st