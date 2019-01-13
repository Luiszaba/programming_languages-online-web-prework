def reformat_languages(languages)
  lang_hash = Hash.new(0)
  languages.each do |style, language_names|
    language_names.each do |name, language_type|
      if lang_hash.has_key?(name)
        lang_hash[name][:style] << style 
      else
        lang_hash[name] = language_type
        lang_hash[name][:style] = [style]
      end 
    end
  end
  lang_hash
end
end
