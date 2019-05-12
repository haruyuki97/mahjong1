module RipaiHelper



  def pais
    [
      "m1", "m2", "m3", "m4", "m5", "m6", "m7", "m8", "m9",
      "s1", "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9",
      "p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9",
      "ton", "nan", "sha", "pei", "haku", "hatsu", "chun"
     ]
  end




  def img
    img = [
      "man1-66-90-s.png", "man2-66-90-s.png", "man3-66-90-s.png",
      "man4-66-90-s.png", "man5-66-90-s.png", "man6-66-90-s.png",
      "man7-66-90-s.png", "man8-66-90-s.png", "man9-66-90-s.png",
      "sou1-66-90-s.png", "sou2-66-90-s.png", "sou3-66-90-s.png",
      "sou4-66-90-s.png", "sou5-66-90-s.png", "sou6-66-90-s.png",
      "sou7-66-90-s.png", "sou8-66-90-s.png", "sou9-66-90-s.png",
      "pin1-66-90-s.png", "pin2-66-90-s.png", "pin3-66-90-s.png",
      "pin4-66-90-s.png", "pin5-66-90-s.png", "pin6-66-90-s.png",
      "pin7-66-90-s.png", "pin8-66-90-s.png", "pin9-66-90-s.png",
      "ji1-66-90-s.png", "ji2-66-90-s.png", "ji3-66-90-s.png",
      "ji4-66-90-s.png", "ji5-66-90-s.png", "ji6-66-90-s.png",
      "ji7-66-90-s.png"]
  end

  def id
    id = [
      "1m", "2m", "3m", "4m", "5m", "6m", "7m", "8m", "9m",
      "1s", "2s", "3s", "4s", "5s", "6s", "7s", "8s", "9s",
      "1p", "2p", "3p", "4p", "5p", "6p", "7p", "8p", "9p",
      "ton", "nan", "sha", "pei", "haku", "hatsu", "chun"
    ]
  end





  # (0..33).each {|i|
  #   code =  "@#{pais[i]} = Pai.new(id[i], img[i])"
  #   eval code
  # }

  def id_pais
    id_pais = []
    id.each do |i|
      4.times do
        id_pais << i
      end
    end
    id_pais
  end

  def id_instance_hash
    id_instance_hash = id.map.with_index {|id, i| [id, Pai.new(id, img[i])]}.to_h
  end

  def id2pai id
    id_instance_hash[id]
  end

  def generate_random_id

    selected_pais_number = (1..136).to_a.sample(13)
    selected_pais = []
    selected_pais_number.each do |i|
      selected_pais << id_pais[i]
    end
    @selected_pais = selected_pais
  end
  # def sorted_pais
  #   sorted_pais_array = []
  #   @sorted_selected_pais_number.each do |i|
  #     sorted_pais_array << pais[i]
  #   end
  #   sorted_pais_array
  # end
end
class Pai
  attr_accessor :id, :img
  def initialize id, img
    @id=id; @img=img
  end
end
