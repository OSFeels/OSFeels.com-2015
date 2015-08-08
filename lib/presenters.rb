# {
#   name:     "",
#   headshot: "",
#   title:    "",
#   bio:      %Q{

#   },
#   abstract: %Q{

#   }
# }

PRESENTERS = [
  {
    name:     "Brenna Flood",
    headshot: "brenna-flood.jpeg",
    title:    "Sometimes You Just Have to Show Them the Money",
    bio:      %Q{
      Brenna Flood is a Senior Build Engineer at ProQuest. She has been in the
      tech industry for more than 15 years in various roles, including technical
      support, system engineering, software quality assurance, and system
      administration. She is a bulldog advocate for quality-centered
      software development.
    },
    abstract: %Q{
      Technical debt is frustrating, and can be downright crippling when attempting to implement new feature sets within
      an existing framework, construct new frameworks that interact with legacy applications, and/or conduct bug fixes.
      <br><br>
      We hem and haw to our peers, our managers about technical debt and the need to refactor - and most times, this is
      greeted with the response of the nodding and agreement about the pain - but nothing gets done about it because
      it's the directors, the non-technical product managers, and the board members that ultimately direct the upcoming
      tasks and priorities for development.
      <br><br>
      And they want new shiny things. They don't understand the ball of mud.
      <br><br>
      The experience of explaining technical issues (but folks aren't listening) is a frustrating one. Most times, it's
      not their fault - they just don't understand the fundamental technical reasons for why refactors are needed. They
      understand their realms, and most times these realms deal only with the time it takes to ship code, the
      monetization of a code base, or both.
      <br><br>
      That's why you need to supply additional information about why the technical debt matters - specifically, show
      them the money and time they are losing by not addressing aspects of the technical debt.
      <br><br>
      In my talk, I will go into the nitty gritty of the creation of a cost/benefit analysis document geared towards
      supplying non-technical people with the information they need in order to understand and appropriately react to
      the reality of the organization's code-based albatross. This will include in depth metrics and data points you can
      use to effectively get the point across that these issues are important.
    }
  },
  {
    name:     "Stephanie Morillo",
    headshot: "",
    title:    "Creating A Space For Us: How A Twitter Chat Turned Into A Virtual Community For #WOCinTech",
    bio:      %Q{

    },
    abstract: %Q{
      I've heard it before from people in positions of privilege - "If you don't feel represented, then why don't you
      create something of your own?" After more than two-and-a-half years working in the tech industry, I always felt
      that living on the intersection of race and gender were seldom addressed in tech initiatives, and in work spaces,
      I seldom encountered other professional women of color outside of the service staff. In an effort to get over the
      feelings of isolation, a friend and I created a Twitter chat using the then-underused #WOCinTech hashtag in an
      effort to bridge the geographic and workplace barriers and connect with women of color already in the tech
      industry and connect with each other. The chat has since grown to become a full-fledged community made up of women
      of color and nonbinary POC technologists, and our two-person team has responded to the needs of this community by
      creating initiatives that target these groups specifically.
      <br><br>
      In my talk, I'll discuss my experiences living at the intersection of race and gender, the #WOCinTech chat origin
      story, how connecting with women of color has empowered me professionally, and how the community wants to help
      others on their path to a career in tech.
    },
  },
  {
    name:     "Rachel Ober",
    headshot: "rachel-ober.jpg",
    title:    "Ensuring the sustainability of your code learning community",
    bio:      %Q{
      Software engineer in Brooklyn, NY specializing in developing in Sass, Ruby, and Ruby on Rails. I spend a lot of
      time learning new things in technology and love sharing it with others.
    },
    abstract: %Q{
      Most great epics tell of how against all odds, our heroine champions over incredible hurdles to accomplish their dream and create a massively successful project. I'm here to tell you that the story isn't over after the happily ever after. Instead, the hard work is just beginning.
      <br><br>
      True legends don't form from one successful deploy, or one successful workshop run. Success is dictated by longevity and key points of interest.
      <br><br>
      Now that you've figured out and climbed your mountain, how are you going to keep your project alive? How can you ensure stability?
      <br><br>
      In 2013, I set out with a very manageable goal of running a RailsBridge workshop in New York City. The second part of my goal was to create a self-sustaining organization that would continue to run workshops to teach the underrepresented minorities in tech while keeping the values set by the RailsBridge founders Sarah Mei and Sarah Allen.
      <br><br>
      It's easy to run workshops, it's a lot harder to develop a healthy culture within a volunteer organization.
      <br><br>
      In this talk I will highlight key points from my two years of as a RailsBridge chapter founder and go through the challenges I faced through strategies in real-time communication, documentation, and code curriculum sharing through technology.
      <br><br>
      The points highlighted are - What is your mission statement? - In one year what do you intend to accomplish? - How do you measure success? - Learning to collaborate and taking suggestions - When to be aware that certain suggestions might not be helpful - Always come back to your mission statement. Don't lose focus. - Planting seeds - Getting comfortable with delegating - When delegating doesn't work - Learning when to let go
    },
  },
  {
    name:     "Kat Toomajian",
    headshot: "kat-toomajian.jpg",
    title:    "From the Inside Out: How Self-Talk Affects Your Community",
    bio:      %Q{
      Kat works for Dreamwidth Studios as the head of Support. She loves insurance, superheroes, historical hermeneutics, and bioethics, among other things. She lives in Minnesota with her two ferrets, Hermes and Isaac.
    },
    abstract: %Q{
      Identifying and discouraging negative self-talk is a simple thing, but it can have a huge impact on your community in a positive way. It increases self-confidence, improves morale, and generally results in happier, more productive community participants. This, in turn, will make you happy.
      Negative self-talk is a pervasive, invasive, and unproductive way of thinking. It can trigger a cascade of things, from abandoned patches (“I am not smart/talented/good enough to figure this out”), to withdrawl from the community (“I screwed this up and everyone knows and hates me”), to general discouragement (“I suck, and have nothing valuable to contribute here”).
      <br><br>
      In this talk, I’ll discuss the various methods Dreamwidth and other organizations use to handle negative self-talk, and the best way to deploy those techniques. I will also discuss things to keep an eye out for in your community that may be at the root of this type of self-talk, and processes you can go through to eliminate them. Finally, there will be a quick overview of impostor syndrome, and the role it plays here.
    }
  }
].sort { |a, b| a.fetch(:name) <=> b.fetch(:name) }
