
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
          {name: "hadouken"},
          {name: "shoryuken"}
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
          {name: "Tiger Knee"},
          {name: "Tiger Shot"}
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
          {name: "Kikoken"},
          {name: "Renkiko"}
        ]
      },
    ]
  end

  def all
    @fighters
  end

  def find(name)
    @fighters.find { |el| el[:name] = name }
  end

end
