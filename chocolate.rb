man_and_woman = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17]

def delete_human(array,delete_id,stop_id)
  array.delete(delete_id)
  delete_id += 2
  delete_id = 0 if(delete_id > array[-1])
  p array
  return array if delete_id ==stop_id
  delete_human(array,delete_id,stop_id)
end

length = man_and_woman.length
man_last = length/2 - 1
results = delete_human(man_and_woman,1,man_last)
results.each do |result|
  if result < man_last.to_i
    puts "hi-ha-"
    count =1
  end
end
