module ApplicationHelper
  def boldify_competitors(string, lang)
    string_tab = string.split
    first_word = string_tab.first
    # if lang == :'zh-CN'
    #   last_word = string_tab.last(2).first
    #   remaining = (string_tab[1..-3] + " " + string_tab.last).join(" ")
    # else
      last_word = string_tab.last
      remaining = string_tab[1..-2].join(" ")
    # end
    OpenStruct.new(first_word: first_word, last_word: last_word, remaining: remaining)
  end
end
