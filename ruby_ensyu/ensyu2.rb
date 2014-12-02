def search
  data = {name: "静岡 太郎", age: 34, address: "静岡県"}
  data1= {name: "名古屋 太郎", age: 25, address: "静岡県"}
  data2= {name: "大津 太郎", age: 19, address: "滋賀県"}

  array = []
  array << data << data1 << data2

  array.each do |p|
    if p[:age] == 34
      return p[:age]
    end
  end
end

p search
