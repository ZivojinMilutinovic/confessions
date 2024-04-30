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
    title: "Caught Between Dreams and Reality",
    body: "I'm caught between dreams and reality, struggling to bridge the gap between who I am and who I want to be. How do I turn my aspirations into tangible achievements?",
    category_id: 6
  },
  {
    title: "Drowning in a Sea of Expectations",
    body: "Expectations drown me, pulling me deeper into a sea of obligations and responsibilities. I fight to keep my head above water, but the weight threatens to drag me under.",
    category_id: 8
  },
  {
    title: "Haunted by the Echoes of My Past",
    body: "Echoes of my past haunt me, their whispers a constant reminder of mistakes I can never undo. How do I silence the voices that echo in the corridors of my mind?",
    category_id: 5
  },
  {
    title: "Trapped Within the Walls of My Mind",
    body: "I'm trapped within the walls of my own mind, imprisoned by thoughts that refuse to set me free. How do I break free from the chains of my own creation?",
    category_id: 9
  },
  {
    title: "Torn Between Heart and Duty",
    body: "My heart pulls me in one direction, duty in another, tearing me apart at the seams. How do I reconcile the two without sacrificing my sense of self?",
    category_id: 1
  },
  {
    title: "Longing for Authentic Connection",
    body: "I long for authentic connection in a world of surface-level interactions, craving depth in a sea of shallow relationships. How do I find genuine connections in a society built on pretense?",
    category_id: 7
  },
  {
    title: "Conforming to Please Others",
    body: "I conform to please others, molding myself into the shapes they desire. But with every compromise, I lose a piece of who I am. How do I reclaim my identity in a world of expectations?",
    category_id: 10
  },
  {
    title: "Paralyzed by Fear of Failure",
    body: "Fear of failure paralyzes me, chaining me to a life of what-ifs and maybes. How do I break free from the shackles of my own insecurities and live boldly?",
    category_id: 3
  },
  {
    title: "Seeking Redemption in a World of Sin",
    body: "I seek redemption in a world stained by sin, yearning for forgiveness for mistakes that stain my soul. Is there grace for the fallen, or am I doomed to carry the burden of my past?",
    category_id: 4
  },
  {
    title: "Desperate for Liberation from Pain's Grasp",
    body: "I'm desperate for liberation from the grip of pain that binds me to my past. But no matter how fast I run, the memories chase me like relentless shadows. How do I escape the prison of my own making?",
    category_id: 2
  },
  {
    title: "Feeling Lost in the City",
    body: "I moved to the city for adventure, but now I feel lost. Everything is moving too fast.",
    category_id: 1
  },
  {
    title: "Struggling with Identity",
    body: "I don't know who I am anymore. I feel like I'm living a lie, pretending to be someone I'm not.",
    category_id: 10
  },
  {
    title: "Desperate for Love",
    body: "I crave love and affection, but I'm afraid of getting hurt. Is it worth the risk?",
    category_id: 7
  },
  {
    title: "Dealing with Anxiety",
    body: "Anxiety consumes me, paralyzing me with fear. I just want to feel normal again.",
    category_id: 9
  },
  {
    title: "Regretting Past Choices",
    body: "I made mistakes that I can't undo. If only I could turn back time and make things right.",
    category_id: 6
  },
  {
    title: "Secrets I Can't Share",
    body: "I have secrets that I can't tell anyone. They weigh heavily on my conscience.",
    category_id: 5
  },
  {
    title: "Lost in a Sea of Doubt",
    body: "I doubt myself and my abilities. What if I'm not good enough?",
    category_id: 3
  },
  {
    title: "Facing Financial Struggles",
    body: "I'm drowning in debt and struggling to make ends meet. Will I ever get ahead?",
    category_id: 8
  },
  {
    title: "Longing for Acceptance",
    body: "I feel like I don't belong anywhere. Will I ever find my place in this world?",
    category_id: 2
  },
  {
    title: "Questioning My Faith",
    body: "I'm questioning everything I once believed. Is there really a higher power?",
    category_id: 4
  },
  {
    title: "Struggling to Find Purpose",
    body: "I feel like I'm drifting aimlessly through life. What is my purpose?",
    category_id: 6
  },
  {
    title: "Feeling Overwhelmed",
    body: "I have so much on my plate, and I don't know how to handle it all.",
    category_id: 8
  },
  {
    title: "The Pain of Heartbreak",
    body: "I thought they were the one, but now my heart is shattered into pieces.",
    category_id: 1
  },
  {
    title: "Dealing with Depression",
    body: "Every day is a battle to get out of bed. Will this darkness ever lift?",
    category_id: 9
  },
  {
    title: "Strained Family Relationships",
    body: "My family and I don't see eye to eye, and it's tearing me apart.",
    category_id: 2
  },
  {
    title: "Living with Guilt",
    body: "I did something I'm not proud of, and the guilt eats away at me every day.",
    category_id: 5
  },
  {
    title: "Feeling Inadequate",
    body: "No matter how hard I try, I always feel like I'm not good enough.",
    category_id: 3
  },
  {
    title: "Coping with Loss",
    body: "The pain of losing someone I love is unbearable. How do I go on?",
    category_id: 4
  },
  {
    title: "Seeking Approval",
    body: "I crave validation from others, but it never feels like enough.",
    category_id: 7
  },
  {
    title: "Struggling with Self-Worth",
    body: "I don't value myself the way I should. How do I learn to love myself?",
    category_id: 10
  },
  {
    title: "Feeling Stuck in a Rut",
    body: "Every day feels like a repeat of the last. How do I break free from this cycle?",
    category_id: 6
  },
  {
    title: "Struggling to Express Myself",
    body: "I have so much to say, but I don't know how to put it into words.",
    category_id: 10
  },
  {
    title: "Desperate for Attention",
    body: "I crave attention and validation from others, but it never feels like enough.",
    category_id: 7
  },
  {
    title: "Constantly Worrying About the Future",
    body: "The uncertainty of what's to come keeps me up at night. What will tomorrow bring?",
    category_id: 9
  },
  {
    title: "Feeling Disconnected from Others",
    body: "I have friends, but I still feel lonely. Why do I feel so disconnected?",
    category_id: 2
  },
  {
    title: "Haunted by Past Mistakes",
    body: "I made choices I regret, and they haunt me every day. Will I ever find peace?",
    category_id: 5
  },
  {
    title: "Struggling to Find Motivation",
    body: "I want to do more with my life, but I can't seem to find the motivation to start.",
    category_id: 3
  },
  {
    title: "Coping with Grief",
    body: "The loss of a loved one leaves a hole in my heart that can never be filled.",
    category_id: 4
  },
  {
    title: "Yearning for Acceptance",
    body: "I try to fit in, but I always feel like an outsider. Will I ever be accepted for who I am?",
    category_id: 1
  },
  {
    title: "Feeling Overwhelmed by Responsibilities",
    body: "There's so much on my plate, and I don't know how to juggle it all.",
    category_id: 8
  },
  {
    title: "Questioning Traditional Gender Roles",
    body: "I don't conform to society's expectations of gender. Why should I be limited by outdated norms?",
    category_id: 10
  },
  {
    title: "Controversial Political Views",
    body: "I hold political views that many consider extreme. Why should I apologize for speaking my mind?",
    category_id: 8
  },
  {
    title: "Exploring Non-Monogamous Relationships",
    body: "I'm in a non-monogamous relationship and I'm happier than ever. Why should society dictate who I love?",
    category_id: 1
  },
  {
    title: "Validity of Mental Illness",
    body: "I believe mental illness is just a societal construct. Can't people just toughen up?",
    category_id: 9
  },
  {
    title: "Controversial Social Movements",
    body: "I support social movements that others deem radical. Why should I stay silent when I see injustice?",
    category_id: 7
  },
  {
    title: "Defending Unpopular Lifestyle Choices",
    body: "I live a lifestyle that many find unconventional. Why should I conform to societal norms if it doesn't make me happy?",
    category_id: 2
  },
  {
    title: "Expressing Skepticism Towards Climate Change",
    body: "I'm skeptical about climate change and believe it's overblown. Can't we focus on more pressing issues?",
    category_id: 3
  },
  {
    title: "Value of Education",
    body: "I dropped out of school and I'm doing just fine. Is a traditional education really necessary for success?",
    category_id: 6
  },
  {
    title: "Challenging the Notion of Consent",
    body: "I believe consent is overemphasized and takes the fun out of relationships. Can't people just go with the flow?",
    category_id: 5
  },
  {
    title: "Questioning Vaccination Safety",
    body: "I'm skeptical about the safety of vaccines and believe they may cause harm. Why should I trust pharmaceutical companies?",
    category_id: 9
  },
  {
    title: "Gun Ownership",
    body: "I believe in the right to bear arms and think gun control laws are unnecessary. Why should law-abiding citizens be punished for the actions of a few?",
    category_id: 8
  },
  {
    title: "Controversial Speech",
    body: "I believe in free speech, even if it means defending views I find offensive. Why should we silence dissenting voices?",
    category_id: 7
  },
  {
    title: "Validity of Climate Change",
    body: "I'm skeptical about climate change and believe it's a natural cycle. Can we really trust the data?",
    category_id: 3
  },
  {
    title: "Legalizing Drugs",
    body: "I support the legalization of drugs and think the war on drugs has failed. Why should the government dictate what we can put in our bodies?",
    category_id: 10
  },
  {
    title: "Challenging Affirmative Action",
    body: "I believe affirmative action discriminates against qualified candidates based on race. Isn't it reverse discrimination?",
    category_id: 6
  },
  {
    title: "Value of Marriage",
    body: "I don't believe in marriage and think it's an outdated institution. Why should love be bound by a legal contract?",
    category_id: 1
  },
  {
    title: "Animal Testing",
    body: "I support animal testing for scientific research and believe it's necessary for medical advancement. Why prioritize animal lives over human health?",
    category_id: 4
  },
  {
    title: "Effectiveness of Affirmative Action",
    body: "I'm skeptical about the effectiveness of affirmative action in promoting diversity. Shouldn't merit be the primary factor in hiring decisions?",
    category_id: 8
  },
  {
    title: "Controversial Immigration Policies",
    body: "I believe in strict immigration policies to protect our borders. Why should we allow unchecked migration?",
    category_id: 7
  },
  {
    title: "Ethics of Animal Testing",
    body: "I struggle with the morality of animal testing for scientific research. Can we justify the suffering of sentient beings for human benefit?",
    category_id: 4
  },
  {
    title: "Privacy Over National Security",
    body: "I believe in prioritizing individual privacy rights over national security measures. Why should we sacrifice our freedoms in the name of safety?",
    category_id: 8
  },
  {
    title: "Challenging Cultural Appropriation",
    body: "I question the notion of cultural appropriation and think it's often blown out of proportion. Can't we appreciate and borrow from other cultures without fear of backlash?",
    category_id: 10
  },
  {
    title: "Legalizing Sex Work",
    body: "I support the legalization of sex work and believe it's a matter of workers' rights and safety. Why should consensual adult activities be criminalized?",
    category_id: 1
  },
  {
    title: "Questioning Affirmative Action in College Admissions",
    body: "I'm skeptical about the fairness of affirmative action in college admissions. Shouldn't admission be based solely on merit?",
    category_id: 6
  },
  {
    title: "Euthanasia Rights",
    body: "I believe in the right to die with dignity and support euthanasia for terminally ill patients. Why should suffering be prolonged against one's will?",
    category_id: 9
  },
  {
    title: "Challenging Traditional Gender Norms",
    body: "I reject traditional gender norms and believe individuals should express themselves freely. Why should society dictate how we identify and present ourselves?",
    category_id: 2
  },
  {
    title: "Controversial Immigration Policies",
    body: "I believe in strict immigration policies to protect our borders. Why should we allow unchecked migration?",
    category_id: 7
  },
  {
    title: "Legality of Surveillance",
    body: "I question the legality of mass surveillance by governments. Shouldn't privacy be a fundamental right?",
    category_id: 8
  },
  {
    title: "Prison Reform",
    body: "I support reforming the prison system to focus on rehabilitation rather than punishment. Why should incarceration perpetuate cycles of violence and injustice?",
    category_id: 3
  },
  {
    title: "Questioning the Ethics of Genetic Engineering",
    body: "I'm skeptical about the morality of genetic engineering and its potential consequences. Should we play with the building blocks of life?",
    category_id: 4
  },
  {
    title: "Reproductive Rights",
    body: "I support a person's right to choose when it comes to reproductive health. Why should decisions about my body be regulated by others?",
    category_id: 9
  },
  {
    title: "Challenging the Education System",
    body: "I question the effectiveness of traditional education methods and advocate for more innovative approaches. Can't we better prepare students for the challenges of the modern world?",
    category_id: 6
  },
  {
    title: "the Legalization of Assisted Suicide",
    body: "I believe in the right to die on one's own terms and support assisted suicide for terminally ill individuals. Why should we prolong suffering when there's no hope for recovery?",
    category_id: 1
  },
  {
    title: "Questioning the Role of Police in Society",
    body: "I'm skeptical about the role of police in society and believe in reallocating resources to address root causes of crime. Can't we reimagine public safety without relying on law enforcement?",
    category_id: 8
  },
  {
    title: "Universal Basic Income",
    body: "I support the idea of universal basic income to address economic inequality and provide financial security for all citizens. Why should poverty be a barrier to a dignified life?",
    category_id: 3
  },
  {
    title: "Challenging Traditional Marriage Norms",
    body: "I question the institution of marriage and believe in redefining relationships based on individual preferences. Why should love be bound by legal contracts?",
    category_id: 2
  },
  {
    title: "Decriminalization of Drug Use",
    body: "I believe in decriminalizing drug use and treating addiction as a public health issue rather than a criminal offense. Why should drug users be punished instead of receiving help?",
    category_id: 10
  },
  {
    title: "Questioning the Ethics of Zoos",
    body: "I'm skeptical about the ethics of keeping animals in zoos for human entertainment. Should we prioritize animal welfare over our own amusement?",
    category_id: 5
  },
  {
    title: "Legalization of Prostitution",
    body: "I support the legalization of prostitution to ensure the safety and rights of sex workers. Why should consensual adult activities be criminalized?",
    category_id: 7
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

###### CHALENGES ###############


confession_challenge_data = [
  {
    title: "Share Your Deepest Fear",
    description: "Confess your deepest fear anonymously. It's okay to open up and share what scares you.",
    duration: 7,
    start_date: Date.today,
    end_date: Date.today + 7.days
  },
  {
    title: "Confess Your Biggest Regret",
    description: "Let go of your regrets by confessing them here. You're not alone in feeling remorse.",
    duration: 10,
    start_date: Date.today,
    end_date: Date.today + 10.days
  },
  {
    title: "Share Your Secret Crush",
    description: "Confess your secret crush anonymously. Sometimes it's liberating to let your feelings out.",
    duration: 5,
    start_date: Date.today,
    end_date: Date.today + 5.days
  },
  {
    title: "Confess Your Guilty Pleasure",
    description: "Share your guilty pleasure anonymously. It's a safe space to embrace your indulgences without judgment.",
    duration: 7,
    start_date: Date.today,
    end_date: Date.today + 7.days
  },
  {
    title: "Confess Your Innermost Desire",
    description: "What is your deepest desire? Confess it anonymously and let it out into the world.",
    duration: 3,
    start_date: Date.today,
    end_date: Date.today + 3.days
  },
  {
    title: "Confess Your Most Embarrassing Moment",
    description: "Embrace vulnerability by confessing your most embarrassing moment anonymously. We've all been there!",
    duration: 14,
    start_date: Date.today,
    end_date: Date.today + 14.days
  }
]

# Loop through the confession challenge data and create Challenge records
confession_challenge_data.each do |challenge_params|
  Challenge.create!(challenge_params)
end
