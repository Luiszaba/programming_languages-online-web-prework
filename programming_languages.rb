def reformat_languages(c_langs)
  lang_hash = Hash.new(0)
  c_langs.each do |style, lang_names|
    lang_names.each do |name, lang_type|
      if lang_hash.has_key?(name)
        lang_hash[name][:style] << style 
      else
        lang_hash[name] = lang_type
        lang_hash[name][:style] = [style]
      end 
    end
  end
  lang_hash
end
