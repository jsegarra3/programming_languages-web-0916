require "pry"
def languageHash
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
  retHash = {}
  languages.each do |style,langList|
    langList.each do |lang,langAtri|
      if retHash.key?(lang)==false
        retHash[lang]={
          :style => [],
          :type => langAtri[:type]
        }
      end
      retHash[lang][:style] << style
      #binding.pry
    end
  end
  retHash
end
reformat_languages(languageHash)
