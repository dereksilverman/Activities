ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
         	{"KALE" => {:price => 3.00,:clearance => false}},
         	{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
         	{"ALMONDS" => {:price => 9.00, :clearance => false}},
            {"TEMPEH" => {:price => 3.00,:clearance => true}},
            {"CHEESE" => {:price => 6.50,:clearance => false}},
            {"BEER" => {:price => 13.00, :clearance => false}},
            {"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
            {"BEETS" => {:price => 2.50,:clearance => false}}]
 
 COUPS = [  {:item=>"AVOCADO", :num=>2, :cost=>5.00},
            {:item=>"BEER", :num=>2, :cost=>20.00},
            {:item=>"CHEESE", :num=>3, :cost=>15.00}]
 
##randomly generates a cart of items
 def generateCart
  cart = []
   rand(20).times do
        cart.push(ITEMS.sample)  
    end
    cart
 end
 
##randomly generates set of coupons
def generateCoups
   coups = []
   rand(2).times do
       coups.push(COUPS.sample)
   end
   coups
end


def checkout
  checkoutitems.generateCart
  checkoutcoupons = generateCoups
end

puts checkoutitems
