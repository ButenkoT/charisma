Category.destroy_all
Comment.destroy_all
Product.destroy_all
User.destroy_all



c1 = Category.create(:name => 'Dolls')
c2 = Category.create(:name => 'Wooden crafts')
c3 = Category.create(:name => 'Embroidery')
c4 = Category.create(:name => 'Jewelery')
c5 = Category.create(:name => 'Paintings')
c6 = Category.create(:name => 'Metal crafts')

p1 = Product.create(:title => 'Horse', :price => '400', :size => '50cm', :image => 'http://cs307715.vk.me/v307715936/9d6/syXbZ8XdcE4.jpg')
p2 = Product.create(:title => 'Doll', :price => '50', :size => '30cm', :image => 'http://s2.thisnext.com/media/largest_dimension/B88450DA.jpg')
p3 = Product.create(:title => 'Neckless')
p4 = Product.create(:title => 'S.Dali')
p5 = Product.create(:title => 'Doll 2')

com1 = Comment.create(:comment => "I love this doll.It's amazing")
com2 = Comment.create(:comment => "This doll is terrible!")
com3 = Comment.create(:comment => "I adore this art by S.Dali!")



p2.categories << [c1]
p3.categories << [c4, c6]
p1.categories << [c3]
p4.categories << [c5]
p5.categories << [c1]

p2.comments << [com1, com2]
p4.comments << [com3]



