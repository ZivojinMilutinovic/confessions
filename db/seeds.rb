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

###### CHALENGES START ###############


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
if Challenge.count.zero?
  confession_challenge_data.each do |challenge_params|
    Challenge.create!(challenge_params)
  end
end


################################# CHALLENGES END ################################################
bodies1 = [ "I'm terrified of rejection. The idea of being cast aside by those I hold dear sends shivers down my spine.",
"The thought of never finding my purpose in life fills me with an overwhelming sense of dread. What if I never discover what I'm truly meant to do?",
"One of my biggest fears is being alone in my old age, with nobody to share my memories and experiences with. It's the fear of growing old without companionship.",
"I'm afraid of failure, not just for myself, but for the disappointment it might bring to those who believe in me. The thought of letting others down is paralyzing.",
"The fear of being judged for my true self is something that haunts me constantly. It's the fear of rejection for who I really am.",
"I fear losing the people I love, not just physically, but emotionally as well. It's the fear of drifting apart from those who mean the most to me.",
"One of my deepest fears is never being able to break free from my past mistakes and regrets. It's the fear of being defined by my shortcomings.",
"The thought of never finding true happiness, no matter how hard I try, is something that keeps me awake at night. What if I'm destined to live a life of perpetual sadness?",
"I'm afraid of losing control over my own destiny, of being swept away by the currents of life without any say in the matter. It's the fear of being powerless.",
"The fear of never living up to my own potential is something that gnaws at me constantly. What if I never become the person I've always wanted to be?",
"I fear losing the ones I love, not just physically, but emotionally drifting apart from them. It's the fear of growing distant from those who mean the most to me.",
"The thought of never finding true love and spending my life in loneliness terrifies me. What if I never experience the deep connection I long for?",
"I'm afraid of never living up to the expectations others have of me. It's the constant pressure to meet standards that feel impossibly high.",
"One of my deepest fears is facing my own mortality. The idea of death and what comes after fills me with existential dread.",
"I fear the uncertainty of the future—the unknown path ahead and the possibility of making wrong choices. It's the fear of regretting the decisions I make.",
"The thought of being trapped in a life that doesn't fulfill me is something I can't shake. What if I never find true happiness?",
"I'm afraid of never finding my place in the world, of drifting through life without purpose or direction. It's the fear of never discovering my true calling.",
"The fear of disappointing those who believe in me is something that weighs heavily on my mind. What if I let them down?",
"I fear losing my sense of self, of becoming someone I no longer recognize. It's the fear of losing touch with who I am at my core.",
"The thought of being forgotten, of leaving no mark on the world, fills me with a sense of dread. What if my existence goes unnoticed?"
]

bodies2 = [
  "I carry the weight of not following my passion for music when opportunity knocked. Fear of failure silenced the melodies within me, and now the symphony of 'what ifs' plays on repeat.",
  "My heart aches for the moments lost with my family in pursuit of career heights. I was blinded by ambition, forsaking precious memories for professional gains.",
  "In the silence of unspoken words lies my regret for not expressing gratitude to a departed friend. I took our bond for granted, only realizing its depth in the echoes of absence.",
  "A shadow of regret looms for surrendering my voice in a toxic relationship. Fear shackled me to silence, and now the echoes of unspoken truths haunt me.",
  "My soul laments the path not taken towards my dream job. Security seduced me into complacency, and now the whispers of missed opportunities echo in my mind.",
  "Regret washes over me for not seizing the chance to explore the world in my youth. Excuses barred the door to adventure, leaving behind a landscape of missed experiences.",
  "In the recesses of my heart resides remorse for neglecting my well-being. Ignorance cloaked self-care, and now the toll of neglected health weighs heavy.",
  "I carry the burden of silence in the face of injustice. Fear silenced my convictions, and now the clamor of missed opportunities reverberates within me.",
  "A cloud of regret hovers for not pursuing higher education. Self-doubt shackled me to mediocrity, and now the allure of unexplored possibilities taunts me.",
  "My spirit aches for the unsaid words to my parents. Assumptions veiled appreciation, and now the void of unspoken gratitude gnaws at me.",
  "My heart lingers in the shadows of regret for forsaking mental well-being. Warning signs went unheeded, and now the journey to inner peace feels obscured.",
  "I bear the weight of not extending a hand to a friend in need. Self-absorption clouded empathy, and now the echo of missed connections resonates within.",
  "Regret casts a long shadow over the road not taken in my creative pursuits. Fear of critique stifled expression, and now the canvases of missed opportunities haunt my dreams.",
  "I carry the burden of fiscal recklessness. Frivolity led to financial strain, and now the specter of monetary worries looms large.",
  "My heart grieves for not standing up against bullying. Silence fed the cruelty, and now the echoes of unspoken courage haunt me.",
  "In the quiet moments, regrets whisper for the unsaid words to a departed loved one. Assumptions of time betrayed me, and now the silence of what could have been echoes.",
  "A shadow of remorse looms for yielding to self-doubt. Fear held me captive to uncertainty, and now the phantom of missed opportunities haunts me.",
  "I carry the weight of missed chances in my career aspirations. Fear of failure shackled ambition, and now the reverberations of unexplored paths echo within.",
  "My soul yearns for the adventures not taken in my youth. Caution bound me to safety, and now the call of untrodden paths echoes in my dreams.",
  "Regret tinges the memories of time not spent with my grandparents. Self-absorption eclipsed familial bonds, and now the echoes of unheard stories linger.",
  "My spirit aches for the empathy not shown to others. Insecurities masked compassion, and now the void of unspoken kindness haunts me.",
  "I carry the weight of unheeded warnings in my physical well-being. Ignored signs led to neglect, and now the journey to restoration feels obscured.",
  "My heart lingers in the shadows of missed opportunities in my career. Fear of failure shackled ambition, and now the whispers of unexplored potential taunt me.",
  "Regret casts a long shadow over the roads not taken in my relationships. Caution led to missed connections, and now the echoes of what could have been resonate within.",
  "In the silence of unspoken truths lies the weight of regret. Fear stifled expression, and now the echoes of missed opportunities reverberate within me.",
  "A cloud of remorse hangs heavy for the voice not raised against injustice. Silence fueled oppression, and now the echoes of unspoken convictions haunt me.",
  "My heart lingers in the shadows of the moments not savored. Pursuit of the next left the present uncherished, and now the echoes of what could have been resonate within.",
  "Regret tinges the dreams not pursued due to fear of judgment. Insecurities stifled ambition, and now the specter of missed opportunities looms large.",
  "I bear the weight of unforgiven grievances. Resentment bound me to the past, and now the echoes of withheld forgiveness resonate within.",
  "My soul grieves for the care not given to my mental well-being. Warning signs went unheeded, and now the journey to peace feels obscured."
]


bodies3 = [
  "I have a secret crush on my best friend's sibling. I know it's complicated, but I can't help how I feel.",
  "There's someone I work with who I have a huge crush on. I see them every day and I can't stop thinking about them.",
  "I've had a crush on my neighbor for years, but I've never had the courage to tell them how I feel.",
  "I have a secret crush on a celebrity. I know it's unrealistic, but I can't help but fantasize about them.",
  "There's someone in my friend group who I have a crush on, but I'm afraid to confess my feelings and risk ruining our friendship.",
  "I have a crush on someone I met online, but I'm too scared to tell them because I don't know how they'll react.",
  "I've had a crush on a classmate since high school, but I never told them how I felt. Now we're adults and I still can't get them out of my head.",
  "There's a barista at my favorite coffee shop who I have a crush on. I always look forward to seeing them when I go in for my morning coffee.",
  "I have a crush on someone I see at the gym. I'm too shy to approach them, but I can't help but admire them from afar.",
  "I have a secret crush on a friend's significant other. I know it's wrong, but I can't help but feel drawn to them.",
  "I've been harboring a secret crush on someone from my friend group for years now. Every time I see them, my heart skips a beat, but I've never had the courage to tell them how I feel. I'm afraid of ruining our friendship or facing rejection, so I keep my feelings bottled up inside, but it's becoming increasingly difficult to hide.",
  "There's this person I've known for a while now, and I can't seem to shake off this overwhelming feeling of attraction towards them. It's not just their looks or their personality, but the way they make me feel whenever we're together. I find myself daydreaming about what it would be like to be with them, but I'm too scared to confess my feelings and risk making things awkward between us.",
  "I've developed a secret crush on a coworker, and it's been consuming my thoughts more than I'd like to admit. Every time they're around, I find myself smiling uncontrollably and feeling butterflies in my stomach. I try to keep my feelings hidden, but it's getting harder to suppress them. I don't know if they feel the same way, and the uncertainty is driving me crazy.",
  "For the longest time, I've had a crush on someone who works at my favorite bookstore. They have this infectious smile that brightens up my day every time I see them. I've considered striking up a conversation with them, but I'm afraid of rejection or making things awkward. So instead, I content myself with stealing glances from afar and imagining what it would be like to get to know them better.",
  "There's this person I've been crushing on for months now, but I can't seem to work up the courage to tell them how I feel. Every time I see them, my heart races, and I feel a rush of adrenaline. I know it's silly to be so infatuated with someone, especially when I don't even know if they feel the same way. But I can't help but hope that maybe, just maybe, they'll feel the same way about me.",
  "I have a secret crush on someone I've never even spoken to. They're a regular at the coffee shop I work at, and every time they come in, I can't help but feel drawn to them. I've memorized their order and even caught myself daydreaming about what our life together could be like. But I know it's just a fantasy, and I'll probably never have the courage to confess my feelings to them.",
  "There's this person in my friend group who I've had a crush on for years, but I've never had the guts to tell them how I feel. They're smart, funny, and incredibly charming, and every time I'm around them, I can't help but feel a flutter in my chest. But I'm afraid of ruining our friendship or facing rejection, so I've kept my feelings hidden. But lately, it's been getting harder to pretend like I don't care.",
  "I've had a secret crush on someone I met through a mutual friend, and I can't seem to shake off this overwhelming feeling of attraction towards them. They're kind, thoughtful, and incredibly attractive, and every time we're together, I can't help but feel like there's something between us. But I'm afraid of confessing my feelings and ruining our friendship or facing rejection. So instead, I'll continue to keep my feelings to myself and hope that maybe, one day, they'll realize how much I care about them.",
  "There's someone in my life who I've been crushing on for as long as I can remember, but I've never had the courage to tell them how I feel. They're everything I've ever wanted in a partner – kind, funny, and incredibly charming. But I'm afraid of rejection or making things awkward between us, so I've kept my feelings hidden. But lately, it's been getting harder and harder to pretend like I don't care, and I'm starting to wonder if maybe I should take a chance and tell them how I feel.",
  "I've developed a secret crush on someone I met through a dating app, and it's been consuming my thoughts more than I'd like to admit. They're smart, funny, and incredibly attractive, and every time we chat, I can't help but feel a spark between us. But I'm afraid of confessing my feelings and scaring them off or facing rejection. So instead, I'll continue to keep my feelings to myself and hope that maybe, just maybe, they'll feel the same way about me.",
  "I've been carrying a secret crush on someone from my social circle for what feels like an eternity. Every time I'm around them, I'm struck by this inexplicable feeling of warmth and admiration. I find myself yearning for their attention and approval, yet I'm paralyzed by the fear of rejection. It's like a constant tug-of-war between my heart and my mind, leaving me in a state of perpetual uncertainty. I know I should speak up and confess my feelings, but the fear of ruining our friendship or facing humiliation holds me back.",
  "There's this person at work who I've been crushing on for what seems like forever. They have this magnetic personality that draws me in, and every interaction leaves me craving for more. I find myself fantasizing about us sharing inside jokes and stealing glances across the office, but I'm hesitant to make a move. What if they don't feel the same way? What if it creates tension in the workplace? These questions plague my mind, trapping me in a cycle of doubt and indecision. So for now, I'll continue to admire them from afar, silently hoping that maybe, just maybe, they'll notice me too.",
  "For the past few months, I've been nursing a secret crush on someone I met through mutual friends. They're the kind of person who lights up the room with their presence, and every time they smile, it feels like the sun breaking through the clouds. I've caught myself stealing glances and imagining what it would be like to hold their hand or share a kiss, but I'm afraid of ruining our friendship. What if they don't feel the same way? What if confessing my feelings jeopardizes the bond we've built? These thoughts torment me day and night, but the fear of rejection keeps me silent.",
  "There's a person I've known for a while now, and I can't shake off this overwhelming feeling of attraction towards them. They're like a magnet, drawing me in with their charm and charisma. Every time we're together, my heart races, and I find myself lost in their presence. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if it ruins our friendship? These questions plague my mind, leaving me paralyzed with indecision. So for now, I'll continue to hide my feelings, silently hoping that maybe, just maybe, they'll see me in a different light.",
  "Lately, I've been grappling with a secret crush on someone I met through a hobby group. They're the kind of person who lights up the room with their smile, and every time they laugh, it feels like music to my ears. I've found myself daydreaming about what it would be like to spend time with them outside of our usual gatherings, but the fear of rejection holds me back. What if they don't feel the same way? What if confessing my feelings ruins the dynamic of our group? These thoughts keep me awake at night, but the fear of humiliation keeps me silent.",
  "There's someone in my life who I've been crushing on for what feels like forever. They're the kind of person who makes my heart skip a beat with just a smile, and every time we're together, I find myself lost in their presence. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if it ruins our friendship? These questions torment me day and night, leaving me trapped in a cycle of doubt and indecision. So for now, I'll continue to hide my feelings, silently hoping that maybe, just maybe, they'll see me in a different light.",
  "For the past few months, I've been harboring a secret crush on someone I met through a dating app. They're the kind of person who makes my heart race with just a text, and every time we chat, I find myself smiling uncontrollably. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if confessing my feelings ruins the connection we've built? These thoughts keep me awake at night, but the fear of humiliation keeps me silent.",
  "There's this person in my life who I've been crushing on for a while now, and I can't seem to shake off this overwhelming feeling of attraction towards them. They're the kind of person who makes my heart skip a beat with just a smile, and every time we're together, I find myself lost in their presence. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if confessing my feelings ruins our friendship? These thoughts plague my mind, leaving me paralyzed with indecision. So for now, I'll continue to hide my feelings, silently hoping that maybe, just maybe, they'll see me in a different light.",
  "Lately, I've been struggling with a secret crush on someone I met through a mutual friend. They're the kind of person who lights up the room with their smile, and every time we're together, I find myself drawn to them like a moth to a flame. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if confessing my feelings ruins our friendship? These thoughts keep me awake at night, but the fear of humiliation keeps me silent.",
  "There's someone in my life who I've been crushing on for a while now, and I can't seem to shake off this overwhelming feeling of attraction towards them. They're the kind of person who makes my heart skip a beat with just a smile, and every time we're together, I find myself lost in their presence. I've entertained the idea of confessing my feelings, but the fear of rejection holds me back. What if they don't feel the same way? What if confessing my feelings ruins our friendship? These thoughts plague my mind, leaving me paralyzed with indecision. So for now, I'll continue to hide my feelings, silently hoping that maybe, just maybe, they'll see me in a different light."
]

bodies4 = [
  "Binge-watching reality TV shows has become a guilty pleasure of mine. Despite their lack of intellectual stimulation, there's an addictive quality to the drama and escapism they offer.",
  "Indulging in junk food late at night has become a secret indulgence of mine. There's an inexplicable satisfaction in sneaking into the kitchen for a snack when everyone else is asleep.",
  "Spending hours scrolling through social media feeds has become a guilty pleasure of mine. While it's a mindless activity, I find it oddly comforting to get lost in other people's lives, even if just for a moment.",
  "Collecting cheesy romance novels has become a guilty pleasure of mine. Despite their clichés and unrealistic plots, there's something comforting about escaping into a world of happily ever afters.",
  "Listening to cheesy pop songs from the 90s has become a guilty pleasure of mine. They may not be considered cool or trendy, but they never fail to put me in a good mood, no matter how many times I've heard them.",
  "Playing video games for hours on end has become a guilty pleasure of mine. It's a total time-sink, but there's something deeply satisfying about immersing myself in a virtual world and conquering challenges.",
  "Indulging in luxurious bubble baths with candles and bath bombs has become a guilty pleasure of mine. It's a decadent treat that helps me unwind and forget about the stresses of the day, if only for a little while.",
  "Watching cheesy romantic comedies has become a guilty pleasure of mine. They may be predictable and formulaic, but there's something heartwarming about watching two people fall in love against all odds.",
  "Binge-eating snacks while watching guilty pleasure TV shows has become a guilty pleasure of mine. It's a cycle of indulgence that I know I should break, but it's just so satisfying in the moment.",
  "Indulging in celebrity gossip magazines has become a guilty pleasure of mine. It's mindless entertainment, but there's something strangely addictive about keeping up with the latest scandals and drama, even if I know it's not particularly productive.",
  "Indulging in a pint of ice cream straight from the container has become a guilty pleasure of mine. There's something deeply satisfying about devouring creamy goodness while binge-watching my favorite shows, even if it's not the healthiest choice.",
  "Watching cute animal videos online has become a guilty pleasure of mine. It may seem silly, but nothing brightens my day like adorable puppies and kittens frolicking around, even if just for a moment.",
  "Secretly listening to cheesy love songs from the 80s has become a guilty pleasure of mine. They may be cheesy and cliché, but they never fail to put a smile on my face and make me feel nostalgic, even if I don't want to admit it.",
  "Indulging in online shopping sprees has become a guilty pleasure of mine. There's an adrenaline rush that comes with clicking 'Add to Cart' and eagerly awaiting the arrival of packages at my doorstep, even if I know I should be more mindful of my spending habits.",
  "Binge-watching trashy reality TV shows has become a guilty pleasure of mine. There's something oddly addictive about the drama and chaos that unfolds on screen, even though I know it's far from reality.",
  "Staying up late into the night playing mobile games on my phone has become a guilty pleasure of mine. It's a mindless escape from reality, and I always tell myself I'll stop after just one more level, even though I know it's unlikely.",
  "Re-reading my favorite childhood books under the covers with a flashlight has become a guilty pleasure of mine. It's a nostalgic escape to simpler times when my only worry was finishing my homework on time, even if just for a moment.",
  "Indulging in fast food cravings when nobody's watching has become a guilty pleasure of mine. There's something liberating about devouring greasy burgers and fries without anyone judging me, even if it's not the healthiest choice.",
  "Binge-watching cheesy rom-com movies on rainy days has become a guilty pleasure of mine. There's a certain comfort that comes with curling up on the couch with a cozy blanket and a feel-good movie, even if it's predictable.",
  "Indulging in spa days at home has become a guilty pleasure of mine. It may seem extravagant, but there's nothing quite like pampering myself with face masks, bath salts, and scented candles, even if just for a little while."
]

bodies5 = [
  "I deeply long to find genuine love, to share my life with someone who embraces me, imperfections and all. My heart yearns for a connection that transcends the surface, enduring the trials of time.",
  "My soul aches for financial stability and liberty. I aspire to flourish in my career, to attain a wealth that affords me comfort, and to chase my dreams unbounded by constraints.",
  "The depths of my being crave worldly adventures, to traverse the globe and immerse myself in diverse cultures, cuisines, and landscapes. I yearn to broaden my horizons and craft enduring memories.",
  "I harbor a fervent dream of leaving a lasting, positive impact on the world. My essence seeks to inspire change, to sow seeds of kindness and uplift those in need, ensuring a brighter tomorrow.",
  "Within me lies a desire for inner peace and acceptance. I yearn to silence the cacophony of doubt and insecurity, embracing self-love and contentment with arms wide open.",
  "I am driven by a hunger for creative fulfillment and expression. My spirit longs to pursue artistic passions with unwavering dedication, fearlessly sharing my unique voice and vision.",
  "My innermost longing is to mend fractured bonds with those I hold dear, to reconnect with loved ones who have drifted away. I ache for reconciliation and forgiveness, to nurture deeper connections.",
  "I dream of igniting hearts with acts of kindness, mentorship, and advocacy. My deepest desire is to leave an indelible mark on souls, to spread positivity and light in every encounter.",
  "I yearn for the resilience to weather life's storms, to emerge from adversity with newfound strength and grace. My soul seeks to conquer challenges, forging a path of empowerment and growth.",
  "I crave a sense of purpose and fulfillment, to unearth my true calling and live with unwavering passion and conviction. My deepest desire is to leave behind a legacy of profound meaning and significance.",
  "To find true inner peace and serenity, quieting the chaos within and embracing a calm that permeates every aspect of life.",
  "For a life filled with genuine connections and meaningful relationships, yearning for bonds that nourish the soul and enrich the journey.",
  "To make a positive impact on the lives of others, leaving behind a legacy of kindness and compassion that reverberates through generations.",
  "Achieving a harmonious balance between personal and professional life, pursuing passions wholeheartedly while nurturing relationships and well-being.",
  "To break free from the shackles of self-doubt and insecurity, embracing worthiness and stepping into power with unwavering confidence.",
  "Unleashing creativity and expressing freely without fear of judgment or rejection, creating art that resonates and sparks inspiration.",
  "Embarking on a journey of self-discovery and exploration, uncovering the depths of being and unlocking true potential.",
  "Living a life of abundance and prosperity, not just in material wealth but also in love, joy, and fulfillment.",
  "Discovering true purpose and passion, pursuing a path that excites and brings meaning, leaving behind a legacy of significance.",
  "Cultivating a deep sense of gratitude and appreciation for the beauty of life, finding joy in simple moments and cherishing each day as a precious gift.",
  "Creating a world where love and acceptance reign supreme, where kindness is currency and compassion is the language spoken by all.",
  "Overcoming fears and limitations, stepping out of comfort zones and embracing the unknown with courage and conviction.",
  "Living authentically and unapologetically, honoring truth and following the path that resonates, even if it means venturing into the unknown.",
  "Leaving behind a lasting legacy that inspires and uplifts others, making a meaningful contribution to the world that outlasts time.",
  "Cultivating deep and meaningful connections with others, sharing heart and soul with kindred spirits who understand and accept unconditionally.",
  "Finding inner freedom and liberation, breaking free from chains of past traumas and limiting beliefs, embracing true essence with open arms.",
  "Living a life of purpose and passion, waking up each day with excitement and anticipation for adventures that lie ahead.",
  "Creating a world where everyone feels seen, heard, and valued, celebrating diversity and ensuring inclusion for all.",
  "Living authentically and unapologetically, embracing flaws and imperfections as beautiful parts of self.",
  "Living a life filled with purpose and meaning, aligning actions with values and beliefs, leaving behind a legacy of authenticity.",
  "Embracing vulnerability and authenticity, showing up fully and sharing gifts and talents with the world without fear of judgment or rejection.",
  "Creating a world where kindness is default, where empathy and compassion guide interactions, and love is driving force behind actions.",
  "Finding inner peace and tranquility amidst life's chaos, cultivating calm that grounds in present moment and fills with gratitude.",
  "Making positive impact on lives of others, leaving behind legacy of kindness, compassion, and generosity that continues to ripple.",
  "Finding sense of connection and belonging, creating community where support and upliftment are foundational.",
  "Embracing true self fully and unapologetically, letting go of need for external validation and living authentically from depths of soul.",
  "Living in world where everyone has access to education, healthcare, and basic human rights, where no one is left behind or marginalized.",
  "Living life of adventure and exploration, traveling world and immersing in different cultures, languages, and ways of life.",
  "Living life of purpose and passion, waking up each day with excitement and purpose, knowing making difference in world.",
  "Cultivating deep sense of inner peace and contentment, finding joy and fulfillment in present moment, living life aligned with values and beliefs.",
  "Living in world where love is guiding force, treating each other with kindness, compassion, and respect, where everyone has opportunity to thrive.",
  "Making positive impact on lives of others, leaving behind legacy of kindness, compassion, and generosity that continues to ripple."
]

bodies6 = [
  "I walked into a glass door in front of a group of people, thinking it was open. It made a loud thud and left everyone staring at me.",
  "During a presentation, I had a slip of the tongue and accidentally called my boss by my pet's name instead of his own. The room burst into laughter, and I felt my face flush with embarrassment.",
  "I had a sudden sneeze during a quiet moment in a meeting, and it was so loud that everyone stopped and looked at me. I wished I could disappear right then and there.",
  "Once, I spilled coffee all over my shirt during a job interview. I tried to play it off cool, but I could feel my cheeks burning with embarrassment.",
  "I mistook a stranger for my friend and went in for a hug. It wasn't until we were already embracing that I realized my mistake. I wanted to shrink into the ground.",
  "During a job interview, I accidentally tripped over my own feet and stumbled into the interviewer's desk. It was a mess, and I could feel my cheeks turning red with embarrassment.",
  "I let out a loud snore during a quiet moment in a lecture hall. Everyone turned to look at me, and I wanted to crawl under my desk in embarrassment.",
  "While giving a presentation, I had a sudden case of hiccups and couldn't stop for the entire duration. It was awkward, and I could feel the eyes of the audience on me.",
  "Once, I sent a message complaining about my boss to my boss instead of my friend. The look on their face when they read it was priceless, and I wished I could disappear.",
  "During a group exercise, I accidentally farted loudly while trying to lift something heavy. Everyone heard it, and I wanted to melt into the floor from embarrassment.",
  "I mistook someone waving to the person behind me as a gesture meant for me, so I waved back enthusiastically. They gave me a strange look, and I realized my mistake too late.",
  "During a presentation, I had a wardrobe malfunction and didn't realize until someone pointed it out afterwards. I felt my face flush with embarrassment, and I wished I could vanish.",
  "Once, I got caught singing and dancing to my favorite song in my room by my roommate. They walked in on me mid-performance, and I wanted to disappear from embarrassment.",
  "During a job interview, I accidentally spilled water all over the table and my notes. I tried to play it off cool, but I could feel my cheeks burning with embarrassment.",
  "I accidentally called my teacher 'mom' in front of the whole class. The room fell silent, and I couldn't look anyone in the eye for the rest of the day.",
  "While presenting in class, I had a sudden case of stage fright and forgot everything I was going to say. I stood there in silence, feeling the eyes of the class on me.",
  "Once, I accidentally walked into the wrong restroom and didn't realize it until I was washing my hands next to a row of confused-looking men. It was mortifying.",
  "During a job interview, I had a sudden sneeze and accidentally sprayed the interviewer with saliva. They looked horrified, and I wished I could disappear.",
  "I accidentally sent a text complaining about my friend to that exact friend instead of my other friend. The awkwardness that followed was unbearable, and I wished I could disappear.",
  "While attending a formal event, I tripped on my own dress and fell in front of everyone. I could feel my face burning with embarrassment as I tried to get up.",
  "Once, I got caught lip-syncing and dancing to my favorite song in my car by the person in the car next to me. I wanted to sink into my seat from embarrassment.",
  "During a job interview, I had a sudden bout of nervous laughter and couldn't stop giggling throughout the entire conversation. It was awkward, and I wished I could compose myself.",
  "I accidentally walked into a glass door thinking it was open. Everyone nearby saw it happen, and I wished I could disappear from embarrassment.",
  "Once, I got my foot stuck in an escalator and had to be rescued by the security guard. It was embarrassing, and I wished I could vanish into thin air.",
  "During a presentation, I had a sudden case of the hiccups and couldn't stop for the entire duration. It was awkward, and I could feel everyone's eyes on me.",
  "I mistook someone for my friend and hugged them from behind, only to realize it wasn't them. I wanted to crawl into a hole from embarrassment.",
  "During a job interview, I accidentally called the interviewer by the wrong name and didn't realize until they corrected me. I wished I could disappear from embarrassment.",
  "Once, I accidentally sent a private message to a group chat instead of the intended recipient. The awkwardness that followed was unbearable, and I wished I could take it back.",
  "I tripped on my own shoelace while walking down the street and fell flat on my face. People stopped to ask if I was okay, but I just wanted to disappear from embarrassment."
]

bodies = [bodies1, bodies2, bodies3, bodies4, bodies5, bodies6]
Challenge.all.each_with_index do |ch,ind|
  bodies[ind].each do |body|
    confession = Confession.new
    confession.title = ch.title
    confession.body = body
    confession.challenge_id = ch.id
    confession.save
  end
end

# SEEDS CONFESSIONS
