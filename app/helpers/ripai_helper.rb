module RipaiHelper


  def new_pais
    @pais = [
    '一', '一', '一', '一',
    '二', '二', '二', '二',
    '三', '三', '三', '三',
    '四', '四', '四', '四',
    '五', '五', '五', '五',
    '六', '六', '六', '六',
    '七', '七', '七', '七',
    '八', '八', '八', '八',
    '九', '九', '九', '九',

    'Ⅰ', 'Ⅰ', 'Ⅰ', 'Ⅰ',
    'Ⅱ', 'Ⅱ', 'Ⅱ', 'Ⅱ',
    'Ⅲ', 'Ⅲ', 'Ⅲ', 'Ⅲ',
    'Ⅳ', 'Ⅳ', 'Ⅳ', 'Ⅳ',
    'Ⅴ', 'Ⅴ', 'Ⅴ', 'Ⅴ',
    'Ⅵ','Ⅵ','Ⅵ','Ⅵ',
    'Ⅶ', 'Ⅶ', 'Ⅶ', 'Ⅶ',
    'Ⅷ', 'Ⅷ', 'Ⅷ', 'Ⅷ',
    'Ⅸ', 'Ⅸ', 'Ⅸ', 'Ⅸ',

    '①', '①', '①', '①',
    '②', '②', '②', '②',
    '③', '③', '③', '③',
    '④', '④', '④', '④',
    '⑤', '⑤', '⑤', '⑤',
    '⑥', '⑥', '⑥', '⑥',
    '⑦', '⑦', '⑦', '⑦',
    '⑧', '⑧', '⑧', '⑧',
    '⑨', '⑨', '⑨', '⑨',

    '東', '東', '東', '東',
    '南', '南', '南', '南',
    '西', '西', '西', '西',
    '北', '北', '北', '北',
    '白', '白', '白', '白',
    '發', '發', '發', '發',
    '中', '中', '中', '中',
    ]

    selected_pais_number = (1..136).to_a.sample(13)
    selected_pais = []
    selected_pais_number.each do |i|
      selected_pais << @pais[i]
    end
    @sorted_selected_pais_number = selected_pais_number.sort
    @selected_pais = selected_pais
    selected_pais
  end
  def sorted_pais

    selected_pais = []
    @sorted_selected_pais_number.each do |i|
      selected_pais << @pais[i]
    end
    selected_pais
  end
end
