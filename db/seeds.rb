# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb



  # confession = Confession.new
  # confession.title = Faker::Movie.title
  # confession.body = Faker::Movie.quote
  # confession.save!
  # 1000.times do
  #   comment = Comment.new
  #   comment.confession_id = confession.id
  #   comment.body = Faker::Movie.quote
  #   comment.save!
  # end

  # User.create!({:email => "halkatran@gmail.com", :role => 1, :password => "Kaladontar123!", :password_confirmation => "Kaladontar123!" })

  # CAtegory creation
 categories = [
  "Relationships",
  "Family",
  "Work",
  "School/education",
  "Secrets",
  "Regrets",
  "Love",
  "Friendship",
  "Health",
  "Finances",
  "Addiction",
  "Mental Health",
  "Religion/Spirituality",
  "Travel",
  "Parenting",
  "Crimes",
  "Dreams",
  "Ambitions",
  "Guilt",
  "Forgiveness"
]

confessions = [
  {
    title: "Feeling Lost in the City",
    body: "I moved to the big city hoping for adventure, but now I feel more lost than ever before. Everything is moving too fast, and I can't seem to keep up.",
    category_id: 1
  },
  {
    title: "A Love Triangle Dilemma",
    body: "Caught in a love triangle, torn between two people I care deeply about. My heart is torn in two, and I don't know how to choose without hurting someone.",
    category_id: 7
  },
  {
    title: "Struggling to Find Purpose in My Career",
    body: "My job feels like a dead-end, and I'm questioning whether it's worth it to keep going. I want to find work that fulfills me, but I'm scared to take the leap.",
    category_id: 3
  },
  {
    title: "The Weight of Regret",
    body: "Regretting past decisions weighs heavy on my heart. If only I had taken different paths, perhaps things would be better now. But dwelling on the past only brings pain.",
    category_id: 6
  },
  {
    title: "Navigating Complex Family Dynamics",
    body: "Family gatherings are like walking on eggshells, with tensions simmering just beneath the surface. I love them, but sometimes I wish things were simpler.",
    category_id: 2
  },
  {
    title: "Hiding My True Feelings",
    body: "I put on a smile and pretend everything is okay, but inside, I'm struggling. I'm afraid to show vulnerability, afraid of being judged or rejected.",
    category_id: 5
  },
  {
    title: "The Burden of Expectations",
    body: "Everyone expects so much from me, and I'm tired of trying to live up to their standards. I just want to be myself without feeling like I'm letting everyone down.",
    category_id: 4
  },
  {
    title: "A Secret That Eats Away at Me",
    body: "I've been keeping a secret for years, and it's eating me up inside. I want to come clean, but I'm terrified of the consequences. How do I move forward?",
    category_id: 10
  },
  {
    title: "Questioning My Faith",
    body: "Doubt creeps in, and I find myself questioning everything I once believed. Is it wrong to have doubts? Or is it a natural part of faith?",
    category_id: 9
  },
  {
    title: "Dealing with Financial Stress",
    body: "Bills pile up, and I struggle to make ends meet. The weight of financial stress is suffocating, and I feel like I'm drowning in debt.",
    category_id: 8
  },
  {
    title: "Feeling Trapped in a Toxic Relationship",
    body: "I'm stuck in a toxic relationship that drains me emotionally and mentally. I know I deserve better, but I'm afraid to leave and start over on my own.",
    category_id: 1
  },
  {
    title: "Battling Anxiety in Silence",
    body: "Anxiety grips me like a vice, suffocating and relentless. I put on a brave face, but inside, I'm crumbling. I wish I could talk about it without feeling weak.",
    category_id: 9
  },
  {
    title: "The Guilt of Parenting Mistakes",
    body: "As a parent, I make mistakes, but the guilt weighs heavily on me. I want to be the best parent I can be, but sometimes I feel like I'm failing miserably.",
    category_id: 2
  },
  {
    title: "Dreams Deferred",
    body: "I had dreams once, but life got in the way. Now, I'm stuck in a mundane routine, wondering what could have been if I had pursued my passions.",
    category_id: 6
  },
  {
    title: "The Loneliness of Grief",
    body: "Grief is a lonely road, and I'm walking it alone. The pain of loss never truly fades, and sometimes I wonder if I'll ever find peace again.",
    category_id: 5
  },
  {
    title: "Holding Onto Resentment",
    body: "Resentment festers inside me like a wound that refuses to heal. I know I should let go, but it's easier said than done. How do I forgive and move on?",
    category_id: 7
  },
  {
    title: "Struggling to Fit In",
    body: "No matter how hard I try, I always feel like I don't belong. I wear a mask to hide my insecurities, but deep down, I long to find my place in the world.",
    category_id: 8
  },
  {
    title: "The Weight of Expectations",
    body: "Others see me as successful, but inside, I'm drowning under the weight of expectations. I fear disappointing those who believe in me, but I'm exhausted trying to keep up.",
    category_id: 3
  },
  {
    title: "Haunted by Past Trauma",
    body: "The ghosts of my past haunt me, whispering reminders of pain and trauma. I try to move forward, but the past has a way of catching up when I least expect it.",
    category_id: 4
  },
  {
    title: "Lost in a Sea of Doubt",
    body: "Doubt clouds my mind, casting shadows on every decision I make. I second-guess myself constantly, afraid of making the wrong choice and facing the consequences.",
    category_id: 10
  },
  {
    title: "The Endless Search for Meaning",
    body: "I search for meaning in a world that feels empty and devoid of purpose. Every day is a struggle to find my place in the chaos.",
    category_id: 6
  },
  {
    title: "Suffocating Under the Weight of Expectations",
    body: "Expectations crush me, suffocating any hope of living authentically. I long to break free from the chains of others' ideals and forge my own path.",
    category_id: 8
  },
  {
    title: "Haunted by the Ghosts of My Past",
    body: "Ghosts of my past haunt me, tormenting me with memories I wish I could forget. How do I escape the shadows that follow me wherever I go?",
    category_id: 5
  },
  {
    title: "The Isolation of Mental Illness",
    body: "Mental illness isolates me, trapping me in a prison of my own mind. I scream for help, but no one hears the silent cries of my broken soul.",
    category_id: 9
  },
  {
    title: "Torn Between Duty and Desire",
    body: "Duty pulls me one way, desire another, tearing me apart at the seams. How do I reconcile the two without sacrificing my sense of self?",
    category_id: 1
  },
  {
    title: "Yearning for Connection in a World of Strangers",
    body: "I yearn for connection in a world of strangers, craving intimacy in a sea of superficiality. How do I find authentic relationships in a society built on facades?",
    category_id: 7
  },
  {
    title: "Burying My True Self to Please Others",
    body: "I bury my true self beneath layers of conformity, afraid to stand out and be judged. But with every mask I wear, I lose a piece of who I am.",
    category_id: 10
  },
  {
    title: "The Paralyzing Fear of Failure",
    body: "Fear of failure paralyzes me, trapping me in a cycle of self-doubt and hesitation. How do I break free from the shackles of my own insecurities?",
    category_id: 3
  },
  {
    title: "Yearning for Redemption in a World of Sin",
    body: "I yearn for redemption in a world tainted by sin, seeking forgiveness for mistakes I can never undo. Is there hope for salvation amidst the darkness?",
    category_id: 4
  },
  {
    title: "Desperate for Escape from the Prison of Pain",
    body: "I long to escape the prison of pain that shackles me to my past. But no matter how far I run, the memories chase me like relentless shadows.",
    category_id: 2
  }
]


if Confession.count.zero?
  confessions.each do |c|
    confession = Confession.new
    confession.title = c[:title]
    confession.body = c[:body]
    confession.confession_categories.create(category_id: c[:category_id]) if confession.save
  end
end

if Category.count.zero?
  categories.each do |c|
    cat = Category.new
    cat.name = c
    cat.save!
  end
end

if User.where(role: :admin).count.zero?
  User.create!({:email => "halkatran@gmail.com", :role => :admin, :password => "Kaladontar123!", :password_confirmation => "Kaladontar123!" })
end
