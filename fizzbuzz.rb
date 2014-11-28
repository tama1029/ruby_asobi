class Fizzbuzz
  def fizzorbuzzorfizzbuzz p
    if is_value_warikire?(15,p.to_f)
      return "fizzbuzz"
    end

    if is_value_warikire?(5,p.to_f)
      return "buzz"
    end

    if is_value_warikire?(3,p.to_f)
      return "fizz"
    end
  end

  def is_int? p
    si = p.split(".")[1]
    si =~ /[1-9]+/ ? false : true
  end

  private
  # 数値で割り切れるかどうか 割り切れたらtrue 割り切れなければfalse
  def is_value_warikire? (w,p)
    is_int? (p/w).to_s
  end
end
# 15 で割り切れたら　fizzbuzz
# 5 で割り切れたら buzz
# 3 で割り切れたら fizz というルール

fb = Fizzbuzz.new
puts fb.fizzorbuzzorfizzbuzz(ARGV[0])

