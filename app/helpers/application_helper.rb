module ApplicationHelper
  def boldify_competitors(string, lang)
    string_tab = string.split
    first_word = string_tab.first
    if string.index("Facebook et Viber")
      facebook = "Facebook et Viber"
    elsif string.index("Facebook and Viber")
      facebook = "Facebook and Viber"
    elsif string.index("Facebook 和Viber竞争者")
      facebook = "Facebook 和Viber竞争者"
    end
    if string_tab.index("Kuaidi")
      second_word = "Kuaidi"
    elsif string_tab.index("Weibo")
      second_word = "Weibo"
    end

    # if lang == :'zh-CN'
    #   last_word = string_tab.last(2).first
    #   remaining = (string_tab[1..-3] + " " + string_tab.last).join(" ")
    # else
      last_word = string_tab.last
      if second_word
        remaining = string_tab[2..-2].join(" ")
      else
        remaining = string_tab[1..-2].join(" ")
      end
      if facebook
        last_word = string_tab.last(3).join(" ")
        if second_word
          remaining = string_tab[2..-4].join(" ")
        else
          remaining = string_tab[1..-4].join(" ")
        end
      end
    # end
    OpenStruct.new(first_word: first_word, last_word: last_word, remaining: remaining, facebook: facebook, second_word: second_word)
  end
end
