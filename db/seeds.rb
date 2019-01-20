# Seed data
# Users, Posts, Restaurants, Comments

User.destroy_all
u1 = User.create :name => "Jamie", :email => "jamie@ga.co", :password => "chicken"
u2 = User.create :name => "Gordo", :email => "gordo@ga.co", :password => "chicken"
u3 = User.create :name => "Bobby", :email => "bobby@ga.co", :password => "chicken"

Post.destroy_all
p1 = Post.create :post_text => "Yummo. Great breakfast", :post_image => "http://fillmurray.com/200/200"
p2 = Post.create :post_text => "Yummo. Great brunch", :post_image => "http://fillmurray.com/200/200"
p3 = Post.create :post_text => "Yummo. Great lunch", :post_image => "http://fillmurray.com/200/200"
p4 = Post.create :post_text => "Yummo. Great scot", :post_image => "http://fillmurray.com/200/200"
p5 = Post.create :post_text => "Yummo. Great dinner", :post_image => "http://fillmurray.com/200/200"
p6 = Post.create :post_text => "Yummo. Great dessert", :post_image => "http://fillmurray.com/200/200"

Restaurant.destroy_all
r1 = Restaurant.create :restaurant_name => "McDonalds", :address => "1 McDonalds St, Sydney"
r2 = Restaurant.create :restaurant_name => "Hungry Jacks", :address => "3 Hungry Jacks St, Sydney"
r3 = Restaurant.create :restaurant_name => "Subway", :address => "5 Subway St, Sydney"
r4 = Restaurant.create :restaurant_name => "KFC", :address => "7 Chicken St, Sydney"


Comment.destroy_all
c1 = Comment.create :comment_text => "Looks like a yummy Big Mac"
c2 = Comment.create :comment_text => "What a yummy Big Mac"
c3 = Comment.create :comment_text => "Big Macs are the best!"
c4 = Comment.create :comment_text => "The burgers ARE better."
c5 = Comment.create :comment_text => "I can't belive I ate the whole thing"
c6 = Comment.create :comment_text => "Finger lickin good!"
c7 = Comment.create :comment_text => "Get in my belly"

# Associations
#######################################################

# users and posts
u1.posts << p1 << p2 << p3
u2.posts << p4 << p5
u3.posts << p6

# posts and comments
p1.comments << c5
p3.comments << c1 << c2 << c3
p2.comments << c4
p4.comments << c6 << c7

# posts and restaurants
p1.restaurant << r1
p2.restaurant << r2
p3.restaurant << r1
p4.restaurant << r3
p5.restaurant << r4
p6.restaurant << r1
