
product1 = Product.create(name: "SkinCeuticals Phyto Corrective Essence Mist 50ml", description: "Give skin a boost of hydration with the SkinCeuticals Phyto Essence Mist. Formulated to strengthen the skin’s barrier, the lightweight facial mist offers an instant soothing effect.", price: 67.00, image_url: "https://static.thcdn.com/images/large/webp//productimg/1600/1600/12932548-2534984326440526.jpg", category: "skincare" )
product2 = Product.create(name: "Pai Skincare C-2 Believe Vitamin C Brightening Moisturizer 50ml", description: "Imparting a radiance-enhancing effect, the Pai Skincare C-2 Believe Vitamin C Brightening Moisturizer is a multi-performing formula suitable for even the most sensitive of skin.", price: 79.00, image_url: "https://static.thcdn.com/images/large/webp//productimg/1600/1600/13870151-2124980389495679.jpg", category: "skincare" )
product3 = Product.create(name: "Eminence Organic Skin Care Clear Skin Probiotic Cleanser 8.4 fl. oz", description: "Eminence Organics Clear Skin Probiotic Cleanser purifies your skin without stripping essential moisture for a clearer, more radiant complexion. Crafted with tea tree oil, this face wash neutralizes bacteria to prevent breakouts, while astringent willow bark controls oil production. Lactic acid exfoliates, while cucumber juice tones and shrinks pore size. A biocomplex of vitamins A, C, E, Coenzyme Q10 and antioxidants reduces the visible signs of aging. Soy-free.", price: 48.00, image_url: "https://static.thcdn.com/images/large/webp//productimg/1600/1600/12901507-7664871870005221.jpg", category: "skincare" )
product4 = Product.create(name: "Obagi Medical Professional-C Serum 20% (1 fl. oz.)", description: "Obagi Professional-C Serum 20% infuses your skin with L-ascorbic acid, the only form of vitamin C suitable for topical application. Designed to penetrate deep into your skin, this vitamin C serum provides effective antioxidant protection from UV damage as it brightens away hyperpigmentation and encourages the growth of collagen and elastin fibers. Hyaluronic acid binds moisture to your skin to prevent dryness.", price: 136.99, image_url: "https://static.thcdn.com/images/large/webp//productimg/1600/1600/11291543-1265002181700054.jpg", category: "skincare" )
product5 = Product.create(name: "Paula's Choice CLINICAL Niacinamide 20 Treatment (0.67 fl. oz.)", description: "Achieve a smoother and more radiant complexion with CLINICAL Niacinamide 20% Treatment from Paula's Choice. This advanced, concentrated serum helps to tighten and minimize the appearance of pores and rough bumps caused by age or sun damage. Niacinamide normalizes pore function and protects from further stretching when exposed to damaging UV light, resulting in improved radiance and texture.", price: "52.0", image_url: "https://static.thcdn.com/images/large/webp//productimg/1600/1600/12902766-1164909089232656.jpg", category: "skincare")


products = [product1, product2, product3, product4, product5]


user1 = User.create(username: "Lizzard", first_name: "Lizzie", password: "1234" )
user2 = User.create(username: "Fran", first_name: "Franny", password: "Fran" )
user3 = User.create(username: "Benji", first_name: "Ben", password: "1234" )
user4 = User.create(username: "Jimmy", first_name: "James", password: "1234" )
user5 = User.create(username: "Hugo", first_name: "Humphrey", password: "1234" )
user6 = User.create(username: "Eustace", first_name: "Eustace", password: "1234" )
users = [user1, user2, user3, user4, user5, user6]


reviews = ["This product exceeded my expectations with its outstanding performance.",
"I'm extremely satisfied with this product; it's definitely worth the investment.", "A remarkable product that offers excellent value for the price.", 
"I can't imagine my life without this product; it has become an essential part of my daily routine.",
 "Impressive durability and sleek design make this product stand out from the rest.",
"I've tried several similar products, but this one truly outshines them all.",
"The functionality and versatility of this product are truly impressive.", "This product has revolutionized the way I [use/do something]; it's a game-changer.",
"Highly recommended for anyone looking for a reliable and efficient product.",
"The quality and craftsmanship of this product are top-notch.",
"This product has simplified my life and made tasks much easier to accomplish.",
"I have no regrets about purchasing this product; it delivers exceptional results.",
"An exceptional product that lives up to its promises and delivers beyond expectations.",
"This product offers a perfect balance of performance, style, and affordability.",
"I'm thoroughly impressed with the features and performance of this product.",
"This product has saved me a lot of time and effort; it's incredibly convenient.",
"The customer support for this product is outstanding; they go above and beyond to ensure satisfaction.",
"I've recommended this product to all my friends and family; it's truly worth it.",
"This product has exceeded my expectations in every aspect; I couldn't be happier.",
"If you're in search of a reliable and high-quality product, look no further; this one ticks all the boxes."]

review1 = Review.create(title: "LOVED", review: reviews[0], rating: 5, product_id: products.sample.id, user_id: users.sample.id)
review2 = Review.create(title: "Not worth the $", review: reviews[1], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review3 = Review.create(title: "Staple my skin routine", review: reviews[2], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review4 = Review.create(title: "Good but feels excessive", review: reviews[3], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review5 = Review.create(title: "Best Moisturizer", review: reviews[4], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review6 = Review.create(title: "Best Moisturizer", review: reviews[5], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review7 = Review.create(title: "Best Moisturizer", review: reviews[6], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review8 = Review.create(title: "Best Moisturizer", review: reviews[7], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review9 = Review.create(title: "Best Moisturizer", review: reviews[8], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review10 = Review.create(title: "Best Moisturizer", review: reviews[9], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review11 = Review.create(title: "Best Moisturizer", review: reviews[10], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review12 = Review.create(title: "Best Moisturizer", review: reviews[11], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review13 = Review.create(title: "Best Moisturizer", review: reviews[12], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review14 = Review.create(title: "Best Moisturizer", review: reviews[13], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review15 = Review.create(title: "Best Moisturizer", review: reviews[14], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review16 = Review.create(title: "Best Moisturizer", review: reviews[15], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review17 = Review.create(title: "Best Moisturizer", review: reviews[16], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review18 = Review.create(title: "Best Moisturizer", review: reviews[17], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review19 = Review.create(title: "Best Moisturizer", review: reviews[18], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)
review20 = Review.create(title: "Best Moisturizer", review: reviews[19], rating: rand(1..5), product_id: products.sample.id, user_id: users.sample.id)



puts "✍🏻🗒️ DB seeded!"


