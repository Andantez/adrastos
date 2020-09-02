require 'faker'

puts "Clearing database"
Comment.destroy_all
SubDiscussion.destroy_all
Discussion.destroy_all
Article.destroy_all
User.destroy_all

puts "Creating database"
# all the users
marcus  = User.create!(name: "Marcus", nickname: "kinho107",        email: "marcus@test.com", password: "123456", photo_url: "https://avatars2.githubusercontent.com/u/46760623?v=4")
rebecca = User.create!(name: "Rebecca", nickname: "Beccy",          email: "beccy@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1571829986/wxv0addepsuu4yy6wazr.jpg")
chris   = User.create!(name: "Chris", nickname: "ChrisChris",       email: "chris@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1580488154/wbmvkgkbhrycknxdgmv5.jpg")
eva     = User.create!(name: "Eva", nickname: "Evaaa",              email: "eva@test.com", password: "123456", photo_url: "https://avatars3.githubusercontent.com/u/46051221?v=4")
juan    = User.create!(name: "Juan", nickname: "Juanito99",         email: "juan@test.com", password: "123456", photo_url: "https://avatars1.githubusercontent.com/u/57139254?v=4")
kalo    = User.create!(name: "Kaloyan", nickname: "Kalo",           email: "kalo@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1581781528/a0v15ygwzgajjyllecx6.jpg")
ben     = User.create!(name: "Ben", nickname: "DijonMaster",        email: "ben@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1536827206/ixr9unj1pvqtkfbzvlcu.jpg")
alex    = User.create!(name: "Alexander", nickname: "TheDestroyer", email: "ale@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1539712635/qwtgbgsk9publpc4b7rj.jpg")
kate    = User.create!(name: "Kathrine", nickname: "Kate",          email: "kate@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1563451507/xqmrljgdzfdqzmlljmpe.jpg")
victor  = User.create!(name: "Victor", nickname: "viking",          email: "vic@test.com", password: "123456", photo_url: "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1581366327/rjq8dkwjn95qg4df07fr.jpg")

# all the articles
gta5 = Article.create!(user: marcus, title: "GTA 5", body: "Michael Townley, Trevor Philips, and Brad Snider partake in a botched robbery in Ludendorff, North Yankton. Nine years later, Michael is living under witness protection with his family in Los Santos, under the alias Michael De Santa. Across town, gangbanger Franklin Clinton is working for a corrupt Armenian car salesman and meets Michael while attempting to fraudulently repossess his son's car; the two later become friends. When Michael finds his wife Amanda sleeping with her tennis coach, he and Franklin chase the coach to a mansion, which Michael destroys in anger. The owner turns out to be the girlfriend of Martin Madrazo, a Mexican drug lord who demands compensation to avoid further violence. Michael returns to a life of crime to obtain the money, enlisting Franklin as an accomplice. With the help of Michael's old friend Lester Crest, a disabled hacker, they perform a jewellery shop heist to pay off the debt. Trevor, who now lives in a trailer park on the outskirts of Los Santos, hears of the heist and realises that it was Michael's handiwork; Trevor had believed that Michael was killed in their botched robbery nine years ago. Trevor surprises Michael and reunites with him, after tracking down his home.", photo_url: "https://i.pinimg.com/originals/ae/0a/08/ae0a08e1a73916f5afa8868c43f34b77.jpg")
uncharted = Article.create!(user: rebecca, title: "Uncharted collection", body: "UNCHARTED: The Nathan Drake Collection includes the singleplayer campaigns for UNCHARTED: Drake's Fortune, UNCHARTED 2: Among Thieves, and UNCHARTED 3: Drake's Deception. Unparalleled Story  Play as Nathan Drake across a trilogy of thrilling, white-knuckle adventures.", photo_url: "https://hips.hearstapps.com/digitalspyuk.cdnds.net/13/43/77601.jpg?resize=480:*")
tombraider = Article.create!(user: chris, title: "Tomb raider", body: "Lara Croft, a courageous and independent young woman, sets out on a dangerous journey to unravel the truth behind her adventurer father's mysterious disappearance.", photo_url: "https://store-images.s-microsoft.com/image/apps.6674.66252867926858756.3a7bf113-281b-4dec-9089-240261b0e96c.4ffb9287-3f5a-4d4a-8a1e-e4ea150abc78")
diablo = Article.create!(user: eva, title: "Diablo 3", body: "Diablo III is a hack-and-slash action role-playing game developed and published by Blizzard Entertainment as the third installment in the Diablo franchise", photo_url: "https://d3tg06jbotvai2.cloudfront.net/game_tetiere/img/diablo-3-reaper-of-souls-img-4.jpg")
reddead = Article.create!(user: juan, title: "Red dead redemption 2", body: "Red Dead Redemption 2 is a 2018 action-adventure game developed and published by Rockstar Games. The game is the third entry in the Red Dead series and is a prequel to the 2010 game Red Dead Redemption.", photo_url: "https://images-na.ssl-images-amazon.com/images/I/91l%2BXW9jctL._AC_SL1500_.jpg")
final = Article.create!(user: kalo, title: "Final Fantasy 7 remake", body: "Final Fantasy VII Remake is an upcoming action role-playing game developed and published by Square Enix. The game is a remake of the 1997 PlayStation game Final Fantasy VII.", photo_url: "https://cdn.mos.cms.futurecdn.net/gPm2WzMKQbJzRWxLwukKCF.jpg")
arkham = Article.create!(user: kalo, title: "Arkham asylum", body: "Batman: Arkham Asylum is a 2009 action-adventure game developed by Rocksteady Studios and published by Eidos Interactive in conjunction with Warner Bros. Interactive Entertainment.", photo_url: "https://images7.alphacoders.com/319/thumb-1920-319689.jpg")
destiny = Article.create!(user: victor, title: "Destiny 2", body: "Destiny 2 is a free-to-play online-only multiplayer first-person shooter video game developed by Bungie. It was released for PlayStation 4 and Xbox One on September 6, 2017, followed by a Microsoft Windows version the following month.", photo_url: "https://s1.gaming-cdn.com/images/products/7092/orig/destiny-2-beyond-light-cover.jpg")
nomanssky = Article.create!(user: ben, title: "No man's sky", body: "No Man's Sky is an exploration survival game developed and published by the indie studio Hello Games. It was released worldwide for the PlayStation 4 and Microsoft Windows in August 2016, and for Xbox One in July 2018. The game is built around four pillars: exploration, survival, combat, and trading.", photo_url: "https://nmswp.azureedge.net/wp-content/uploads/2019/08/nms-beyond-book-cover.png")
fallenorder = Article.create!(user: kate, title: "Star wars: fallen order", body: "Five years after the execution of Order 66 and the beginning of the Great Jedi Purge, former Jedi Padawan Cal Kestis is in hiding from the newly risen Galactic Empire. On the planet Bracca, where he works as a scrapper salvaging ships from the Clone Wars, Cal uses the Force to save his friend Prauf from falling to his death. The incident is recorded by an Imperial Probe Droid who relays the information to the Empire. The Empire sends two Inquisitors known as the Second Sister and the Ninth Sister to pursue Cal. After they kill Prauf, Cal makes his escape, briefly engaging the Second Sister before being rescued by a former Jedi Knight named Cere Junda and her partner pilot Greez Dritus in their ship, the Stinger Mantis.", photo_url: "https://steamcdn-a.akamaihd.net/steam/apps/1172380/capsule_616x353.jpg?t=1573959140")
puts "created #{Article.count} Articles"

#all the discussions
#discussion for gta5
walk = Discussion.create!(user: victor, article: gta5, title: "Walkthrough")
popular = Discussion.create!(user: victor, article: gta5, title: "Popularity of GTA franchise!")
manyyears = Discussion.create!(user: victor, article: gta5, title: "How is it still so popular after many years?")
bankrob = Discussion.create!(user: victor, article: gta5, title: "Help me with the bank robbery mission")
coolcheats = Discussion.create!(user: victor, article: gta5, title: "Anyone has some cool cheats?")
crossplay = Discussion.create!(user: victor, article: gta5, title: "Can I crossplay?")

#discussion for uncharted
drake = Discussion.create!(user: rebecca, article: uncharted, title: "How Well Do You Know Drake?")
favorite = Discussion.create!(user: rebecca, article: uncharted, title: "What is your favorite Uncharted game?")
betterthan = Discussion.create!(user: rebecca, article: uncharted, title: "Why is The Last Of Us better rated than Uncharted 4?")
underrated = Discussion.create!(user: rebecca, article: uncharted, title: "Is Uncharted an underrated gaming franchise?")
bestone = Discussion.create!(user: rebecca, article: uncharted, title: "Is Among Theives the best Uncharted game?")
villain = Discussion.create!(user: rebecca, article: uncharted, title: "Which is the best Uncharted villain?")

#discussion for tomb raider
Discussion.create!(user: chris, article: tombraider, title: "What is it all about?")
Discussion.create!(user: chris, article: tombraider, title: "Who are Trinity?")
Discussion.create!(user: chris, article: tombraider, title: "Will this ever be available on PS4?")
Discussion.create!(user: chris, article: tombraider, title: "Has Crystal Dynamics delivered a better crafting system?")
Discussion.create!(user: chris, article: tombraider, title: "Are there plenty of tombs to raid?")

#discussion for diablo 3
Discussion.create!(user: eva, article: diablo, title: "What the hell happened after the end of Diablo 2?")
Discussion.create!(user: eva, article: diablo, title: "How many players will Diablo 3 support in multiplayer?")
Discussion.create!(user: eva, article: diablo, title: "What World of Warcraft gameplay features will be used in Diablo 3?")
Discussion.create!(user: eva, article: diablo, title: "How the hell am I going to pay for this?")
Discussion.create!(user: eva, article: diablo, title: "Will Blizzard budge over Diablo 3's controversial new art style?")

#discussion for red dead redemption 2
Discussion.create!(user: juan, article: reddead, title: "What is Red Dead Redemption 2 about?")
Discussion.create!(user: juan, article: reddead, title: "Is Red Dead Redemption 2 coming to a pc?")
Discussion.create!(user: juan, article: reddead, title: "Is Red Dead Redemption 2 coming to Nintendo Switch?")
Discussion.create!(user: juan, article: reddead, title: "Will there be or does Red Dead Redemption 2 have multiplayer option?")
Discussion.create!(user: juan, article: reddead, title: "Are there any special Red Dead Redemption 2 Editions?")

#discussion for final fantasy 7 remake
Discussion.create!(user: kalo, article: final, title: "Fans have been asking for a FFVII remake for years.")
Discussion.create!(user: kalo, article: final, title: "Have you decided how many installments there will be?")
Discussion.create!(user: kalo, article: final, title: "So, even if you’re familiar with the story, there’s still an opportunity to be surprised?")
Discussion.create!(user: kalo, article: final, title: "When Is The Release Date?")
Discussion.create!(user: kalo, article: final, title: "Where, In The Name Of Midgar, Is Tifa?")

#discussion for arkham asylum
Discussion.create!(user: ben, article: arkham, title: "Who Is The First Major Character You Encounter?")
Discussion.create!(user: ben, article: arkham, title: "The boss fights are different, right?")
Discussion.create!(user: ben, article: arkham, title: "How has freeflow hand-to-hand combat been improved since the first game?")
Discussion.create!(user: ben, article: arkham, title: "Can we drive the Batmobile or Batplane?")
Discussion.create!(user: ben, article: arkham, title: "Is Bane in this game?")

#discussion for destiny 2
Discussion.create!(user: alex, article: destiny, title: "How does loot work in Destiny 2?")
Discussion.create!(user: alex, article: destiny, title: "What's the best way to increase my power level in Destiny 2?")
Discussion.create!(user: alex, article: destiny, title: "How do I get legendary engrams in Destiny 2?")
Discussion.create!(user: alex, article: destiny, title: "Is the a sequel coming soon?")
Discussion.create!(user: alex, article: destiny, title: "Ending explained!")

#discussion for no mans sky
Discussion.create!(user: kate, article: nomanssky, title: "Why can’t I summon my freighter?")
Discussion.create!(user: kate, article: nomanssky, title: "Can my friends and I play co-op missions?")
Discussion.create!(user: kate, article: nomanssky, title: "Why can my friends and I make the same discoveries?")
Discussion.create!(user: kate, article: nomanssky, title: "Why can’t I warp to the system my friend is in?")
Discussion.create!(user: kate, article: nomanssky, title: "How do I transfer items from my freighter to me?")

#discussion for fallen order
Discussion.create!(user: victor, article: fallenorder, title: "Walkthrough")
Discussion.create!(user: victor, article: fallenorder, title: "Is it as good as the reviews say?")
Discussion.create!(user: victor, article: fallenorder, title: "How to change the lightsaber color?")
Discussion.create!(user: victor, article: fallenorder, title: "Who knows the history of bd-1?")
Discussion.create!(user: victor, article: fallenorder, title: "Cannot beat second sister in the cave!")
Discussion.create!(user: victor, article: fallenorder, title: "When is it set in times?")
puts "created #{Discussion.count} Discussions"

#all the subdiscussions

#sudiscussions for gta5
#subdiscussion for gta5walk
SubDiscussion.create!(discussion: walk, title: "Walkthrough from Victor")
SubDiscussion.create!(discussion: walk, title: "Walkthrough from Juan")
SubDiscussion.create!(discussion: walk, title: "Walkthrough from Kaloyan")
SubDiscussion.create!(discussion: walk, title: "Walkthrough from Wendy")
SubDiscussion.create!(discussion: walk, title: "Walkthrough from Macadema")

#subdiscussion for gtapopular
SubDiscussion.create!(discussion: popular, title: "It still rocks after so many years!")
SubDiscussion.create!(discussion: popular, title: "Very smartly built up!")
SubDiscussion.create!(discussion: popular, title: "Who cares??")
SubDiscussion.create!(discussion: popular, title: "Gotta be the best thing ever!")

#subdiscussion for gta5manyyears
SubDiscussion.create!(discussion: manyyears, title: "It is just good marketing!")
SubDiscussion.create!(discussion: manyyears, title: "Cause it is so so good!")
SubDiscussion.create!(discussion: manyyears, title: "People just like this kinda games!")
SubDiscussion.create!(discussion: manyyears, title: "Rockstar is just tooo popular!")

#subdiscussion for gta5bankrob
SubDiscussion.create!(discussion: bankrob, title: "The ability to freely rob any bank or ATM.")
SubDiscussion.create!(discussion: bankrob, title: "Make sure you've got these mods installed!")
SubDiscussion.create!(discussion: bankrob, title: "Pacific Standard Public Deposit Bank.")
SubDiscussion.create!(discussion: bankrob, title: "Take between $2,000,000 $6,000,000.")

#subdiscussion for gta5coolcheats
SubDiscussion.create!(discussion: coolcheats, title: "Max Health and Armor")
SubDiscussion.create!(discussion: coolcheats, title: "Invincibility (Last 5 minutes)")
SubDiscussion.create!(discussion: coolcheats, title: "Recharge Special Ability")
SubDiscussion.create!(discussion: coolcheats, title: "Drunk Mode.")
SubDiscussion.create!(discussion: coolcheats, title: "Fortunately using cheat codes in GTA 5 is super easy.")

#subdiscussion for gta5crossplay
SubDiscussion.create!(discussion: crossplay, title: "Technically it is possible!")
SubDiscussion.create!(discussion: crossplay, title: "Don't think so!")
SubDiscussion.create!(discussion: crossplay, title: "I think we can!")
SubDiscussion.create!(discussion: crossplay, title: "I can play with my friend, he is playing ps4, I play pc.")

#subdiscussions for uncharted
#subdiscussions for uncharteddrake
SubDiscussion.create!(discussion: drake, title: "Very well!")
SubDiscussion.create!(discussion: drake, title: "Tell me more about him!")
SubDiscussion.create!(discussion: drake, title: "Is that true that hi is Sully's son?")
SubDiscussion.create!(discussion: drake, title: "How gonna play him in the upcoming movie?")
SubDiscussion.create!(discussion: drake, title: "Is he returning in a new upcoming game?")

#subdiscussions for unchartedfavorite
SubDiscussion.create!(discussion: favorite, title: "Among thieves!")
SubDiscussion.create!(discussion: favorite, title: "Defo A thief's end.")
SubDiscussion.create!(discussion: favorite, title: "Drake's deception for me!!")
SubDiscussion.create!(discussion: favorite, title: "Gotta be Among thieves...")
SubDiscussion.create!(discussion: favorite, title: "Nothing better than Among thieves")

#subdiscussions for unchartedbetterthan
SubDiscussion.create!(discussion: betterthan, title: "It does not have a more solid story!")
SubDiscussion.create!(discussion: betterthan, title: "It is just a better game!")
SubDiscussion.create!(discussion: betterthan, title: "I love them both!")
SubDiscussion.create!(discussion: betterthan, title: "No point to discuss this!")
SubDiscussion.create!(discussion: betterthan, title: "Last of us forever!")

#subdiscussions for unchartedunderrated
SubDiscussion.create!(discussion: underrated, title: "no way!!")
SubDiscussion.create!(discussion: underrated, title: "for maybe for some who don't understand playing!")
SubDiscussion.create!(discussion: underrated, title: "The best games ever!")
SubDiscussion.create!(discussion: underrated, title: "It is way too overrated I think!")

#subdiscussions for unchartedundbestone
SubDiscussion.create!(discussion: bestone, title: "Totally is!")
SubDiscussion.create!(discussion: bestone, title: "Not for me!")
SubDiscussion.create!(discussion: bestone, title: "I love them all!")
SubDiscussion.create!(discussion: bestone, title: "I hate them all!")

#subdiscussions for unchartedvillain
SubDiscussion.create!(discussion: villain, title: "Gabriel Roman for me!")
SubDiscussion.create!(discussion: villain, title: "I really loved Nadine!")
SubDiscussion.create!(discussion: villain, title: "Rafe was very good villain.")
SubDiscussion.create!(discussion: villain, title: "I gotta go with Gabriel!")
puts "created #{SubDiscussion.count} SubDiscussions"

#this creates comments for subdiscussions
SubDiscussion.all.each do |subdisc|
  rand(3..5).times do
    Comment.create!(content: Faker::Games::WorldOfWarcraft.quote,comment_text: Faker::Games::WorldOfWarcraft.quote, user: User.all.sample, sub_discussion: subdisc)
  end
end
puts "created #{Comment.count} Comments"
