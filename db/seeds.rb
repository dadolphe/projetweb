# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

   
users = User.create!( [ :email => 'mathieu@yopmail.com', :firstname => 'Mathieu', :name => 'Ber', :promo => '2017', :phonenumber => '0101010101', :password => 'testtest', :admin => 'true' ])
users = User.create!( [ :email => 'dylan@yopmail.com', :firstname => 'Dylan', :name => 'Adol', :promo => '2012', :phonenumber => '5101010105', :password => 'testtest', :admin => 'true' ])
users = User.create!( [ :email => 'test@yopmail.com', :firstname => 'Test', :name => 'Testname', :promo => '2014', :phonenumber => '0123010101', :password => 'testtest' ])
users = User.create!( [ :email => 'marie2@yopmail.com', :firstname => 'Marie', :name => 'Mariename', :promo => '2015', :phonenumber => '0142010101', :password => 'testtest' ])
users = User.create!( [ :email => 'pierre56@yopmail.com', :firstname => 'Pierre', :name => 'Pierrename', :promo => '2016', :phonenumber => '0105010101', :password => 'testtest' ])

articles = Article.create!( [:title=> 'FirstArticle', :price=> '500', :user_id => '1', ])


