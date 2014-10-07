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

com1 = Comment.create(:body => "I love this doll.It's amazing")
com2 = Comment.create(:body => "This doll is terrible!")
com3 = Comment.create(:body => "I adore this art by S.Dali!")



