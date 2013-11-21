#Organizing Nested Data

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

#HASH (Type, Intepreted/Compiled) w/in HASH (Programming Language) w/in HASH (OO or Functional)

reorganized_lang = {}
languages.each_pair do |style, attributes|
  attributes.each_pair do |lang, type|
    reorganized_lang[lang] ||= {:style => [style], :type => "type"}
    end
  end

puts reorganized_lang