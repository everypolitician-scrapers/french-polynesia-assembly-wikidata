require 'wikidata/fetcher'

fr_names = WikiData::Category.new( 'Catégorie:Personnalité politique polynésienne', 'fr').member_titles
ty_names = WikiData::Category.new( 'Catégorie:Tià māìtihia', 'ty').member_titles
en_names = WikiData::Category.new( 'Category:Members of the Assembly of French Polynesia', 'en').member_titles

EveryPolitician::Wikidata.scrape_wikidata(names: { en: en_names, fr: fr_names, ty: ty_names })

