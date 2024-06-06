# Name: Hemal Varsani
print "Enter the subtotal: "
sub_total_str = gets.chomp
sub_total = sub_total_str.to_f

#rates
PST_RATE = 0.07
GST_RATE = 0.05

#PST AND GST Amounts
pst = sub_total * PST_RATE
gst = sub_total * GST_RATE

#total
grand_total = sub_total + pst + gst;

# Displaying outputs.
puts "Subtotal: $#{sub_total}"
puts "PST: #{'%.2f' %(pst)}"
puts "GST: #{'%.2f' %(gst)}"
puts "Grand Total: $#{'%.2f' % grand_total}"

# displays notes based on the grand total.
if (grand_total <= 5)
    puts "Pocket Change"
elsif (grand_total > 5.00 && grand_total < 20)
    puts "Wallet Time"
else
    puts "Charge It!"
end
