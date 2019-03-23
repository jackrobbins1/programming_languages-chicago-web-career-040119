require "pry"

def lang_hash
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}
end

def reformat_languages(languages)
  new_hash = {}

  languages.each { |type, langz|
    langz.each { |one_lang, valz|
      #binding.pry
      new_hash[one_lang] = valz
      new_hash[one_lang][:style] = []
      new_hash[one_lang][:style].push(type)
    }
  }
  binding.pry
end

reformat_languages(lang_hash)
