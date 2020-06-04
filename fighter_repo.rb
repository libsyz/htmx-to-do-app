
class FighterRepo
  def initialize
    @fighters = [
      {
        name: "ryu",
        infos: {
          age: 30,
          country: "Japan",
          style: "Ansatsuken"
        },
        moveset: [
          {name: "Hadouken",
           code: "hadouken"},
          {name: "Shoryuken",
           code: "shoryuken"}
        ]
      },
      {
        name: "sagat",
        infos: {
          age: 41,
          country: "Thailand",
          style: "Muay Thai"
        },
        moveset: [
          {name: "Tiger Knee",
           code: "tiger_knee"},
          {name: "Tiger Shot",
           code: "tiger_shot"}
        ]
      },
      {
        name: "chunli",
        infos: {
          age: 26,
          country: "Hong Kong",
          style: "Chinese Kempo"
        },
        moveset: [
          {name: "Kikoken",
           code: "kikoken"},
          {name: "Renkiko",
           code: "renkiko"}
        ]
      },
    ]
  end

  def all
    @fighters
  end

end
